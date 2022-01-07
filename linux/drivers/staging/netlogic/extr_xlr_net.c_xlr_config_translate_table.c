
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xlr_net_priv {int base_addr; TYPE_2__* ndev; TYPE_1__* nd; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int cpu_mask; } ;


 scalar_t__ R_TRANSLATETABLE ;
 int dev_dbg (int *,char*,int,int,int,int,int) ;
 int pr_info (char*,char*) ;
 int xlr_nae_wreg (int ,scalar_t__,int) ;

__attribute__((used)) static void xlr_config_translate_table(struct xlr_net_priv *priv)
{
 u32 cpu_mask;
 u32 val;
 int bkts[32];
 int b1, b2, c1, c2, i, j, k;
 int use_bkt;

 use_bkt = 0;
 cpu_mask = priv->nd->cpu_mask;

 pr_info("Using %s-based distribution\n",
  (use_bkt) ? "bucket" : "class");
 j = 0;
 for (i = 0; i < 32; i++) {
  if ((1 << i) & cpu_mask) {

   bkts[j] = ((i / 4) * 8) + (i % 4);
   j++;
  }
 }


 k = 0;
 c1 = 3;
 c2 = 0;
 for (i = 0; i < 64; i++) {






  c1 = (c1 + 1) & 3;
  c2 = (c1 + 1) & 3;
  b1 = bkts[k];
  k = (k + 1) % j;
  b2 = bkts[k];
  k = (k + 1) % j;

  val = ((c1 << 23) | (b1 << 17) | (use_bkt << 16) |
    (c2 << 7) | (b2 << 1) | (use_bkt << 0));
  dev_dbg(&priv->ndev->dev, "Table[%d] b1=%d b2=%d c1=%d c2=%d\n",
   i, b1, b2, c1, c2);
  xlr_nae_wreg(priv->base_addr, R_TRANSLATETABLE + i, val);
  c1 = c2;
 }
}
