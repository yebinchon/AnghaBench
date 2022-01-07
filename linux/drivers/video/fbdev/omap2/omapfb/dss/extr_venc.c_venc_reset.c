
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSSERR (char*) ;
 int VENC_F_CONTROL ;
 int msleep (int) ;
 int venc_read_reg (int ) ;
 int venc_write_reg (int ,int) ;

__attribute__((used)) static void venc_reset(void)
{
 int t = 1000;

 venc_write_reg(VENC_F_CONTROL, 1<<8);
 while (venc_read_reg(VENC_F_CONTROL) & (1<<8)) {
  if (--t == 0) {
   DSSERR("Failed to reset venc\n");
   return;
  }
 }






}
