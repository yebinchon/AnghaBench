
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {int loopmode_send_done_requested; int cmr_value; } ;


 int BIT13 ;
 int CMR ;
 int usc_OutReg (struct mgsl_struct*,int ,int ) ;

__attribute__((used)) static void usc_loopmode_send_done( struct mgsl_struct * info )
{
  info->loopmode_send_done_requested = 0;

  info->cmr_value &= ~BIT13;
  usc_OutReg(info, CMR, info->cmr_value);
}
