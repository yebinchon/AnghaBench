
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2i_hba {int adapter_state; } ;


 int ADAPTER_STATE_GOING_DOWN ;
 int ADAPTER_STATE_LINK_DOWN ;
 int ADAPTER_STATE_UP ;
 int EPERM ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnx2i_adapter_ready(struct bnx2i_hba *hba)
{
 int retval = 0;

 if (!hba || !test_bit(ADAPTER_STATE_UP, &hba->adapter_state) ||
     test_bit(ADAPTER_STATE_GOING_DOWN, &hba->adapter_state) ||
     test_bit(ADAPTER_STATE_LINK_DOWN, &hba->adapter_state))
  retval = -EPERM;
 return retval;
}
