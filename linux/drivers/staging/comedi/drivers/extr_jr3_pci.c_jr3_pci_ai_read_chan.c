
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jr3_pci_subdev_private {scalar_t__ state; TYPE_2__* sensor; } ;
struct comedi_subdevice {struct jr3_pci_subdev_private* private; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int serial_no; int model_no; TYPE_1__* filter; } ;
struct TYPE_3__ {int v2; int v1; int mz; int my; int mx; int fz; int fy; int fx; } ;


 unsigned int get_s16 (int *) ;
 unsigned int get_u16 (int *) ;
 scalar_t__ state_jr3_done ;

__attribute__((used)) static unsigned int jr3_pci_ai_read_chan(struct comedi_device *dev,
      struct comedi_subdevice *s,
      unsigned int chan)
{
 struct jr3_pci_subdev_private *spriv = s->private;
 unsigned int val = 0;

 if (spriv->state != state_jr3_done)
  return 0;

 if (chan < 56) {
  unsigned int axis = chan % 8;
  unsigned int filter = chan / 8;

  switch (axis) {
  case 0:
   val = get_s16(&spriv->sensor->filter[filter].fx);
   break;
  case 1:
   val = get_s16(&spriv->sensor->filter[filter].fy);
   break;
  case 2:
   val = get_s16(&spriv->sensor->filter[filter].fz);
   break;
  case 3:
   val = get_s16(&spriv->sensor->filter[filter].mx);
   break;
  case 4:
   val = get_s16(&spriv->sensor->filter[filter].my);
   break;
  case 5:
   val = get_s16(&spriv->sensor->filter[filter].mz);
   break;
  case 6:
   val = get_s16(&spriv->sensor->filter[filter].v1);
   break;
  case 7:
   val = get_s16(&spriv->sensor->filter[filter].v2);
   break;
  }
  val += 0x4000;
 } else if (chan == 56) {
  val = get_u16(&spriv->sensor->model_no);
 } else if (chan == 57) {
  val = get_u16(&spriv->sensor->serial_no);
 }

 return val;
}
