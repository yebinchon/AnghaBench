
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2i_hba {int adapter_state; } ;


 int ADAPTER_STATE_INIT_FAILED ;
 int ADAPTER_STATE_UP ;
 int BNX2I_INIT_POLL_TIME ;
 int HZ ;
 int bnx2i_send_fw_iscsi_init_msg (struct bnx2i_hba*) ;
 int msleep (int ) ;
 int test_bit (int ,int *) ;

void bnx2i_start(void *handle)
{

 struct bnx2i_hba *hba = handle;
 int i = HZ;






 bnx2i_send_fw_iscsi_init_msg(hba);
 while (!test_bit(ADAPTER_STATE_UP, &hba->adapter_state) &&
        !test_bit(ADAPTER_STATE_INIT_FAILED, &hba->adapter_state) && i--)
  msleep((1000 / HZ));
}
