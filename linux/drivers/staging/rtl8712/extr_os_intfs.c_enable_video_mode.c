
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct _adapter {int dummy; } ;


 int r8712_fw_cmd (struct _adapter*,int) ;

__attribute__((used)) static void enable_video_mode(struct _adapter *padapter, int cbw40_value)
{
 u32 intcmd = 0xf4000500;

 if (cbw40_value) {



  intcmd |= 0x200;
 }
 r8712_fw_cmd(padapter, intcmd);
}
