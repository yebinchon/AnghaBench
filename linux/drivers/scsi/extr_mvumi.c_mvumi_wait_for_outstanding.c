
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_hba {int fw_state; } ;


 int FAILED ;
 int FW_STATE_ABORT ;
 int SUCCESS ;
 int mvumi_reset (struct mvumi_hba*) ;
 scalar_t__ mvumi_start (struct mvumi_hba*) ;

__attribute__((used)) static int mvumi_wait_for_outstanding(struct mvumi_hba *mhba)
{
 mhba->fw_state = FW_STATE_ABORT;
 mvumi_reset(mhba);

 if (mvumi_start(mhba))
  return FAILED;
 else
  return SUCCESS;
}
