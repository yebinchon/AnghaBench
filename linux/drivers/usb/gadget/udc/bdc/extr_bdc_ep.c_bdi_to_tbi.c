
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_bds_table; } ;
struct bdc_ep {TYPE_2__ bd_list; TYPE_1__* bdc; } ;
struct TYPE_3__ {int dev; } ;


 int dev_vdbg (int ,char*,int,int,int) ;

__attribute__((used)) static int bdi_to_tbi(struct bdc_ep *ep, int bdi)
{
 int tbi;

 tbi = bdi / ep->bd_list.num_bds_table;
 dev_vdbg(ep->bdc->dev,
  "bdi:%d num_bds_table:%d tbi:%d\n",
  bdi, ep->bd_list.num_bds_table, tbi);

 return tbi;
}
