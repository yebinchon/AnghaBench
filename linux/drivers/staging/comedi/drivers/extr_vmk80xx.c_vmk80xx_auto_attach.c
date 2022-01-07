
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmk80xx_private {scalar_t__ model; int limit_sem; } ;
struct vmk80xx_board {scalar_t__ model; int name; } ;
struct usb_interface {int dummy; } ;
struct comedi_device {int board_name; struct vmk80xx_board const* board_ptr; } ;


 unsigned long ARRAY_SIZE (struct vmk80xx_board*) ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ VMK8055_MODEL ;
 struct vmk80xx_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 struct usb_interface* comedi_to_usb_interface (struct comedi_device*) ;
 int sema_init (int *,int) ;
 int usb_set_intfdata (struct usb_interface*,struct vmk80xx_private*) ;
 int vmk80xx_alloc_usb_buffers (struct comedi_device*) ;
 struct vmk80xx_board* vmk80xx_boardinfo ;
 int vmk80xx_find_usb_endpoints (struct comedi_device*) ;
 int vmk80xx_init_subdevices (struct comedi_device*) ;
 int vmk80xx_reset_device (struct comedi_device*) ;

__attribute__((used)) static int vmk80xx_auto_attach(struct comedi_device *dev,
          unsigned long context)
{
 struct usb_interface *intf = comedi_to_usb_interface(dev);
 const struct vmk80xx_board *board = ((void*)0);
 struct vmk80xx_private *devpriv;
 int ret;

 if (context < ARRAY_SIZE(vmk80xx_boardinfo))
  board = &vmk80xx_boardinfo[context];
 if (!board)
  return -ENODEV;
 dev->board_ptr = board;
 dev->board_name = board->name;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 devpriv->model = board->model;

 sema_init(&devpriv->limit_sem, 8);

 ret = vmk80xx_find_usb_endpoints(dev);
 if (ret)
  return ret;

 ret = vmk80xx_alloc_usb_buffers(dev);
 if (ret)
  return ret;

 usb_set_intfdata(intf, devpriv);

 if (devpriv->model == VMK8055_MODEL)
  vmk80xx_reset_device(dev);

 return vmk80xx_init_subdevices(dev);
}
