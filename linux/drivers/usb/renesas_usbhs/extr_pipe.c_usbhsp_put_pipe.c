
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int usbhsp_flags_init (struct usbhs_pipe*) ;

__attribute__((used)) static void usbhsp_put_pipe(struct usbhs_pipe *pipe)
{
 usbhsp_flags_init(pipe);
}
