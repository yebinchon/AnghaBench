
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct f_sourcesink {int dummy; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;


 int disable_source_sink (struct f_sourcesink*) ;
 int enable_source_sink (struct usb_composite_dev*,struct f_sourcesink*,unsigned int) ;
 struct f_sourcesink* func_to_ss (struct usb_function*) ;

__attribute__((used)) static int sourcesink_set_alt(struct usb_function *f,
  unsigned intf, unsigned alt)
{
 struct f_sourcesink *ss = func_to_ss(f);
 struct usb_composite_dev *cdev = f->config->cdev;

 disable_source_sink(ss);
 return enable_source_sink(cdev, ss, alt);
}
