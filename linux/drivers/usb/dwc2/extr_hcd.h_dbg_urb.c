
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int pipe; } ;


 scalar_t__ PIPE_BULK ;
 scalar_t__ PIPE_CONTROL ;
 scalar_t__ usb_pipetype (int ) ;

__attribute__((used)) static inline bool dbg_urb(struct urb *urb)
{
 return usb_pipetype(urb->pipe) == PIPE_BULK ||
        usb_pipetype(urb->pipe) == PIPE_CONTROL;
}
