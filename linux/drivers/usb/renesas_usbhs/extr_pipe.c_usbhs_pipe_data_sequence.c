
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_pipe {int dummy; } ;


 int SQCLR ;
 int SQSET ;
 int usbhsp_pipectrl_set (struct usbhs_pipe*,int,int) ;

void usbhs_pipe_data_sequence(struct usbhs_pipe *pipe, int sequence)
{
 u16 mask = (SQCLR | SQSET);
 u16 val;







 switch (sequence) {
 case 0:
  val = SQCLR;
  break;
 case 1:
  val = SQSET;
  break;
 default:
  return;
 }

 usbhsp_pipectrl_set(pipe, mask, val);
}
