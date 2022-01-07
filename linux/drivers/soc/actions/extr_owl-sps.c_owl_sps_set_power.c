
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct owl_sps_domain {TYPE_2__* sps; TYPE_1__* info; } ;
struct TYPE_4__ {int base; } ;
struct TYPE_3__ {int pwr_bit; int ack_bit; } ;


 int BIT (int ) ;
 int owl_sps_set_pg (int ,int ,int ,int) ;

__attribute__((used)) static int owl_sps_set_power(struct owl_sps_domain *pd, bool enable)
{
 u32 pwr_mask, ack_mask;

 ack_mask = BIT(pd->info->ack_bit);
 pwr_mask = BIT(pd->info->pwr_bit);

 return owl_sps_set_pg(pd->sps->base, pwr_mask, ack_mask, enable);
}
