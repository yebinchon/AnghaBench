
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {unsigned int tv_nsec; scalar_t__ tv_sec; } ;
struct comedi_subdevice {scalar_t__ type; void* lock; int (* busy ) (struct comedi_device*,struct comedi_insn*,unsigned int*,void*) ;int (* insn_read ) (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;size_t index; unsigned int* maxdata_list; unsigned int maxdata; int (* insn_write ) (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;int n_chan; int (* insn_bits ) (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;int (* insn_config ) (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;TYPE_1__* async; } ;
struct comedi_insn {int insn; int n; size_t subdev; int chanspec; } ;
struct comedi_device {size_t n_subdevices; int (* insn_device_config ) (struct comedi_device*,struct comedi_insn*,unsigned int*) ;int class_dev; struct comedi_subdevice* subdevices; int mutex; } ;
struct TYPE_2__ {int (* inttrig ) (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;} ;


 scalar_t__ COMEDI_SUBD_UNUSED ;
 size_t CR_CHAN (int ) ;
 int EACCES ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;



 unsigned int INSN_DEVICE_CONFIG_GET_ROUTES ;


 int INSN_MASK_SPECIAL ;



 unsigned int NSEC_PER_USEC ;
 int check_insn_config_length (struct comedi_insn*,unsigned int*) ;
 int check_insn_device_config_length (struct comedi_insn*,unsigned int*) ;
 int comedi_check_chanlist (struct comedi_subdevice*,int,int *) ;
 int dev_dbg (int ,char*,...) ;
 int get_valid_routes (struct comedi_device*,unsigned int*) ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;
 int stub2 (struct comedi_device*,struct comedi_insn*,unsigned int*) ;
 int stub3 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 int stub4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 int stub5 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 int stub6 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 int udelay (unsigned int) ;

__attribute__((used)) static int parse_insn(struct comedi_device *dev, struct comedi_insn *insn,
        unsigned int *data, void *file)
{
 struct comedi_subdevice *s;
 int ret = 0;
 int i;

 lockdep_assert_held(&dev->mutex);
 if (insn->insn & INSN_MASK_SPECIAL) {


  switch (insn->insn) {
  case 132:
   {
    struct timespec64 tv;

    if (insn->n != 2) {
     ret = -EINVAL;
     break;
    }

    ktime_get_real_ts64(&tv);

    data[0] = (unsigned int)tv.tv_sec;
    data[1] = tv.tv_nsec / NSEC_PER_USEC;
    ret = 2;

    break;
   }
  case 129:
   if (insn->n != 1 || data[0] >= 100000) {
    ret = -EINVAL;
    break;
   }
   udelay(data[0] / 1000);
   ret = 1;
   break;
  case 131:
   if (insn->n != 1) {
    ret = -EINVAL;
    break;
   }
   if (insn->subdev >= dev->n_subdevices) {
    dev_dbg(dev->class_dev,
     "%d not usable subdevice\n",
     insn->subdev);
    ret = -EINVAL;
    break;
   }
   s = &dev->subdevices[insn->subdev];
   if (!s->async) {
    dev_dbg(dev->class_dev, "no async\n");
    ret = -EINVAL;
    break;
   }
   if (!s->async->inttrig) {
    dev_dbg(dev->class_dev, "no inttrig\n");
    ret = -EAGAIN;
    break;
   }
   ret = s->async->inttrig(dev, s, data[0]);
   if (ret >= 0)
    ret = 1;
   break;
  case 133:
   ret = check_insn_device_config_length(insn, data);
   if (ret)
    break;

   if (data[0] == INSN_DEVICE_CONFIG_GET_ROUTES) {




    data[1] = (insn->n - 2) / 2;
    ret = get_valid_routes(dev, data);
    break;
   }


   ret = dev->insn_device_config(dev, insn, data);
   break;
  default:
   dev_dbg(dev->class_dev, "invalid insn\n");
   ret = -EINVAL;
   break;
  }
 } else {

  unsigned int maxdata;

  if (insn->subdev >= dev->n_subdevices) {
   dev_dbg(dev->class_dev, "subdevice %d out of range\n",
    insn->subdev);
   ret = -EINVAL;
   goto out;
  }
  s = &dev->subdevices[insn->subdev];

  if (s->type == COMEDI_SUBD_UNUSED) {
   dev_dbg(dev->class_dev, "%d not usable subdevice\n",
    insn->subdev);
   ret = -EIO;
   goto out;
  }


  if (s->lock && s->lock != file) {
   dev_dbg(dev->class_dev, "device locked\n");
   ret = -EACCES;
   goto out;
  }

  ret = comedi_check_chanlist(s, 1, &insn->chanspec);
  if (ret < 0) {
   ret = -EINVAL;
   dev_dbg(dev->class_dev, "bad chanspec\n");
   goto out;
  }

  if (s->busy) {
   ret = -EBUSY;
   goto out;
  }

  s->busy = parse_insn;
  switch (insn->insn) {
  case 130:
   ret = s->insn_read(dev, s, insn, data);
   if (ret == -ETIMEDOUT) {
    dev_dbg(dev->class_dev,
     "subdevice %d read instruction timed out\n",
     s->index);
   }
   break;
  case 128:
   maxdata = s->maxdata_list
       ? s->maxdata_list[CR_CHAN(insn->chanspec)]
       : s->maxdata;
   for (i = 0; i < insn->n; ++i) {
    if (data[i] > maxdata) {
     ret = -EINVAL;
     dev_dbg(dev->class_dev,
      "bad data value(s)\n");
     break;
    }
   }
   if (ret == 0) {
    ret = s->insn_write(dev, s, insn, data);
    if (ret == -ETIMEDOUT) {
     dev_dbg(dev->class_dev,
      "subdevice %d write instruction timed out\n",
      s->index);
    }
   }
   break;
  case 135:
   if (insn->n != 2) {
    ret = -EINVAL;
   } else {





    unsigned int orig_mask = data[0];
    unsigned int shift = 0;

    if (s->n_chan <= 32) {
     shift = CR_CHAN(insn->chanspec);
     if (shift > 0) {
      insn->chanspec = 0;
      data[0] <<= shift;
      data[1] <<= shift;
     }
    }
    ret = s->insn_bits(dev, s, insn, data);
    data[0] = orig_mask;
    if (shift > 0)
     data[1] >>= shift;
   }
   break;
  case 134:
   ret = check_insn_config_length(insn, data);
   if (ret)
    break;
   ret = s->insn_config(dev, s, insn, data);
   break;
  default:
   ret = -EINVAL;
   break;
  }

  s->busy = ((void*)0);
 }

out:
 return ret;
}
