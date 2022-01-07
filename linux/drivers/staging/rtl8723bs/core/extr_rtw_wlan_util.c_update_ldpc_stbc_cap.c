
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stbc_cap; int ldpc_cap; scalar_t__ ht_option; } ;
struct sta_info {int ldpc; int stbc; TYPE_1__ htpriv; } ;


 int LDPC_HT_ENABLE_TX ;
 int STBC_HT_ENABLE_TX ;
 scalar_t__ TEST_FLAG (int ,int ) ;

void update_ldpc_stbc_cap(struct sta_info *psta)
{
 if (psta->htpriv.ht_option) {
  if (TEST_FLAG(psta->htpriv.ldpc_cap, LDPC_HT_ENABLE_TX))
   psta->ldpc = 1;

  if (TEST_FLAG(psta->htpriv.stbc_cap, STBC_HT_ENABLE_TX))
   psta->stbc = 1;
 } else {
  psta->ldpc = 0;
  psta->stbc = 0;
 }
}
