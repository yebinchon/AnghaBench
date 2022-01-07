
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2i_hba {int adapter_state; TYPE_1__* netdev; } ;
struct TYPE_2__ {int state; } ;


 int ADAPTER_STATE_LINK_DOWN ;
 int __LINK_STATE_NOCARRIER ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bnx2i_get_link_state(struct bnx2i_hba *hba)
{
 if (test_bit(__LINK_STATE_NOCARRIER, &hba->netdev->state))
  set_bit(ADAPTER_STATE_LINK_DOWN, &hba->adapter_state);
 else
  clear_bit(ADAPTER_STATE_LINK_DOWN, &hba->adapter_state);
}
