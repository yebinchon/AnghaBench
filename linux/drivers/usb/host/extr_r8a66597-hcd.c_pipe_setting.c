
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct urb {int pipe; int dev; } ;
struct r8a66597_td {scalar_t__ pipenum; TYPE_1__* pipe; struct urb* urb; } ;
struct r8a66597_pipe_info {int dummy; } ;
struct r8a66597 {int dummy; } ;
struct TYPE_5__ {struct r8a66597_pipe_info info; } ;


 int cfifo_change (struct r8a66597*,int ) ;
 int clear_all_buffer (struct r8a66597*,TYPE_1__*) ;
 int pipe_buffer_setting (struct r8a66597*,struct r8a66597_pipe_info*) ;
 int pipe_toggle_restore (struct r8a66597*,TYPE_1__*,struct urb*) ;
 int pipe_toggle_set (struct r8a66597*,TYPE_1__*,struct urb*,int ) ;
 int r8a66597_pipe_toggle (struct r8a66597*,TYPE_1__*,int ) ;
 int usb_gettoggle (int ,int ,int ) ;
 int usb_pipecontrol (int ) ;
 int usb_pipeendpoint (int ) ;
 int usb_pipeout (int ) ;
 int usb_settoggle (int ,int ,int ,int) ;

__attribute__((used)) static void pipe_setting(struct r8a66597 *r8a66597, struct r8a66597_td *td)
{
 struct r8a66597_pipe_info *info;
 struct urb *urb = td->urb;

 if (td->pipenum > 0) {
  info = &td->pipe->info;
  cfifo_change(r8a66597, 0);
  pipe_buffer_setting(r8a66597, info);

  if (!usb_gettoggle(urb->dev, usb_pipeendpoint(urb->pipe),
       usb_pipeout(urb->pipe)) &&
      !usb_pipecontrol(urb->pipe)) {
   r8a66597_pipe_toggle(r8a66597, td->pipe, 0);
   pipe_toggle_set(r8a66597, td->pipe, urb, 0);
   clear_all_buffer(r8a66597, td->pipe);
   usb_settoggle(urb->dev, usb_pipeendpoint(urb->pipe),
          usb_pipeout(urb->pipe), 1);
  }
  pipe_toggle_restore(r8a66597, td->pipe, urb);
 }
}
