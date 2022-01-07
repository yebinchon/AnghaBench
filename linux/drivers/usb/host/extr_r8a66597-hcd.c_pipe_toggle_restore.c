
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int pipe; } ;
struct r8a66597_pipe {int dummy; } ;
struct r8a66597_device {int dummy; } ;
struct r8a66597 {int dummy; } ;


 unsigned short* get_toggle_pointer (struct r8a66597_device*,int ) ;
 struct r8a66597_device* get_urb_to_r8a66597_dev (struct r8a66597*,struct urb*) ;
 int r8a66597_pipe_toggle (struct r8a66597*,struct r8a66597_pipe*,unsigned short) ;
 unsigned char usb_pipeendpoint (int ) ;

__attribute__((used)) static void pipe_toggle_restore(struct r8a66597 *r8a66597,
    struct r8a66597_pipe *pipe,
    struct urb *urb)
{
 struct r8a66597_device *dev = get_urb_to_r8a66597_dev(r8a66597, urb);
 unsigned char endpoint = usb_pipeendpoint(urb->pipe);
 unsigned short *toggle = get_toggle_pointer(dev, urb->pipe);

 if (!toggle)
  return;

 r8a66597_pipe_toggle(r8a66597, pipe, *toggle & (1 << endpoint));
}
