
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxfast_private {int ai_cmd_running; int mut; int ignore; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct usbduxfast_private* private; } ;
struct comedi_cmd {int convert_arg; int chanlist_len; scalar_t__ start_src; int * chanlist; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 int CR_RANGE (int ) ;
 int EBUSY ;
 long MIN_SAMPLING_PERIOD ;
 int PACKETS_TO_IGNORE ;
 int SENDADCOMMANDS ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_NOW ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * usbduxfast_ai_inttrig ;
 int usbduxfast_cmd_data (struct comedi_device*,int,int,int,unsigned int,int) ;
 int usbduxfast_send_cmd (struct comedi_device*,int ) ;
 int usbduxfast_submit_urb (struct comedi_device*) ;

__attribute__((used)) static int usbduxfast_ai_cmd(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 struct usbduxfast_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int rngmask = 0xff;
 int j, ret;
 long steps, steps_tmp;

 mutex_lock(&devpriv->mut);
 if (devpriv->ai_cmd_running) {
  ret = -EBUSY;
  goto cmd_exit;
 }





 devpriv->ignore = PACKETS_TO_IGNORE;

 steps = (cmd->convert_arg * 30) / 1000;

 switch (cmd->chanlist_len) {
 case 1:




  if (CR_RANGE(cmd->chanlist[0]) > 0)
   rngmask = 0xff - 0x04;
  else
   rngmask = 0xff;







  if (cmd->start_src == TRIG_EXT) {



   usbduxfast_cmd_data(dev, 0, 0x01, 0x01, rngmask, 0x00);
  } else {
   usbduxfast_cmd_data(dev, 0, 0x01, 0x00, rngmask, 0x00);
  }

  if (steps < MIN_SAMPLING_PERIOD) {

   if (steps <= 1) {
    usbduxfast_cmd_data(dev, 1,
          0x89, 0x03, rngmask, 0xff);
   } else {






    usbduxfast_cmd_data(dev, 1, steps - 1,
          0x02, rngmask, 0x00);




    usbduxfast_cmd_data(dev, 2,
          0x09, 0x01, rngmask, 0xff);
   }
  } else {






   steps = steps - 1;


   usbduxfast_cmd_data(dev, 1,
         steps / 2, 0x00, rngmask, 0x00);


   usbduxfast_cmd_data(dev, 2, steps - steps / 2,
         0x00, rngmask, 0x00);






   usbduxfast_cmd_data(dev, 3,
         0x09, 0x03, rngmask, 0xff);
  }
  break;

 case 2:





  if (CR_RANGE(cmd->chanlist[0]) > 0)
   rngmask = 0xff - 0x04;
  else
   rngmask = 0xff;


  usbduxfast_cmd_data(dev, 0, 0x01, 0x02, rngmask, 0x00);


  steps_tmp = steps - 1;

  if (CR_RANGE(cmd->chanlist[1]) > 0)
   rngmask = 0xff - 0x04;
  else
   rngmask = 0xff;



  usbduxfast_cmd_data(dev, 1, steps_tmp / 2,
        0x00, 0xfe & rngmask, 0x00);


  usbduxfast_cmd_data(dev, 2, steps_tmp - steps_tmp / 2,
        0x00, rngmask, 0x00);


  usbduxfast_cmd_data(dev, 3, 0x01, 0x02, rngmask, 0x00);





  steps_tmp = steps - 2;

  if (CR_RANGE(cmd->chanlist[0]) > 0)
   rngmask = 0xff - 0x04;
  else
   rngmask = 0xff;



  usbduxfast_cmd_data(dev, 4, steps_tmp / 2,
        0x00, (0xff - 0x02) & rngmask, 0x00);


  usbduxfast_cmd_data(dev, 5, steps_tmp - steps_tmp / 2,
        0x00, rngmask, 0x00);

  usbduxfast_cmd_data(dev, 6, 0x01, 0x00, rngmask, 0x00);
  break;

 case 3:



  for (j = 0; j < 1; j++) {
   int index = j * 2;

   if (CR_RANGE(cmd->chanlist[j]) > 0)
    rngmask = 0xff - 0x04;
   else
    rngmask = 0xff;






   usbduxfast_cmd_data(dev, index, steps / 2,
         0x02, rngmask, 0x00);

   if (CR_RANGE(cmd->chanlist[j + 1]) > 0)
    rngmask = 0xff - 0x04;
   else
    rngmask = 0xff;




   usbduxfast_cmd_data(dev, index + 1, steps - steps / 2,
         0x00, 0xfe & rngmask, 0x00);
  }


  steps_tmp = steps - 2;



  usbduxfast_cmd_data(dev, 4, steps_tmp / 2,
        0x02, rngmask, 0x00);

  if (CR_RANGE(cmd->chanlist[0]) > 0)
   rngmask = 0xff - 0x04;
  else
   rngmask = 0xff;




  usbduxfast_cmd_data(dev, 5, steps_tmp - steps_tmp / 2,
        0x00, (0xff - 0x02) & rngmask, 0x00);

  usbduxfast_cmd_data(dev, 6, 0x01, 0x00, rngmask, 0x00);
  break;

 case 16:
  if (CR_RANGE(cmd->chanlist[0]) > 0)
   rngmask = 0xff - 0x04;
  else
   rngmask = 0xff;

  if (cmd->start_src == TRIG_EXT) {
   usbduxfast_cmd_data(dev, 0, 0x01, 0x01,
         (0xff - 0x02) & rngmask, 0x00);
  } else {






   usbduxfast_cmd_data(dev, 0, 0xff, 0x00,
         (0xff - 0x02) & rngmask, 0x00);
  }



  usbduxfast_cmd_data(dev, 1, 0x01, 0x02, rngmask, 0x00);


  steps = steps - 2;


  usbduxfast_cmd_data(dev, 2, steps / 2,
        0x00, 0xfe & rngmask, 0x00);


  usbduxfast_cmd_data(dev, 3, steps - steps / 2,
        0x00, rngmask, 0x00);




  usbduxfast_cmd_data(dev, 4, 0x09, 0x01, rngmask, 0xff);

  break;
 }


 ret = usbduxfast_send_cmd(dev, SENDADCOMMANDS);
 if (ret < 0)
  goto cmd_exit;

 if ((cmd->start_src == TRIG_NOW) || (cmd->start_src == TRIG_EXT)) {

  devpriv->ai_cmd_running = 1;
  ret = usbduxfast_submit_urb(dev);
  if (ret < 0) {
   devpriv->ai_cmd_running = 0;

   goto cmd_exit;
  }
  s->async->inttrig = ((void*)0);
 } else {
  s->async->inttrig = usbduxfast_ai_inttrig;
 }

cmd_exit:
 mutex_unlock(&devpriv->mut);

 return ret;
}
