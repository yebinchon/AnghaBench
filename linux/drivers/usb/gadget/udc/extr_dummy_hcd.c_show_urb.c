
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_buffer_length; int actual_length; int pipe; TYPE_1__* dev; } ;
typedef int ssize_t ;
struct TYPE_2__ {int speed; } ;
 int scnprintf (char*,size_t,char*,struct urb*,int ,int,char*,int ,int ,int ) ;
 int usb_pipeendpoint (int ) ;
 scalar_t__ usb_pipein (int ) ;
 int usb_pipetype (int ) ;

__attribute__((used)) static inline ssize_t show_urb(char *buf, size_t size, struct urb *urb)
{
 int ep = usb_pipeendpoint(urb->pipe);

 return scnprintf(buf, size,
  "urb/%p %s ep%d%s%s len %d/%d\n",
  urb,
  ({ char *s;
  switch (urb->dev->speed) {
  case 129:
   s = "ls";
   break;
  case 131:
   s = "fs";
   break;
  case 130:
   s = "hs";
   break;
  case 128:
   s = "ss";
   break;
  default:
   s = "?";
   break;
   } s; }),
  ep, ep ? (usb_pipein(urb->pipe) ? "in" : "out") : "",
  ({ char *s; switch (usb_pipetype(urb->pipe)) { case 133: s = ""; break; case 134: s = "-bulk"; break; case 132: s = "-int"; break; default: s = "-iso"; break; } s; }),
  urb->actual_length, urb->transfer_buffer_length);
}
