
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct cw1200_common {int conf_listen_interval; int hw_refclk; int bt_present; TYPE_1__* sdd; } ;
typedef int __le16 ;
struct TYPE_2__ {int* data; int size; } ;




 int le16_to_cpu (int ) ;
 int pr_debug (char*,...) ;
 int pr_warn (char*,...) ;

__attribute__((used)) static int cw1200_parse_sdd_file(struct cw1200_common *priv)
{
 const u8 *p = priv->sdd->data;
 int ret = 0;

 while (p + 2 <= priv->sdd->data + priv->sdd->size) {
  if (p + p[1] + 2 > priv->sdd->data + priv->sdd->size) {
   pr_warn("Malformed sdd structure\n");
   return -1;
  }
  switch (p[0]) {
  case 129: {
   u16 v;
   if (p[1] < 4) {
    pr_warn("SDD_PTA_CFG_ELT_ID malformed\n");
    ret = -1;
    break;
   }
   v = le16_to_cpu(*((__le16 *)(p + 2)));
   if (!v)
    break;

   v = le16_to_cpu(*((__le16 *)(p + 4)));
   priv->conf_listen_interval = (v >> 7) & 0x1F;
   pr_debug("PTA found; Listen Interval %d\n",
     priv->conf_listen_interval);
   break;
  }
  case 128: {
   u16 clk = le16_to_cpu(*((__le16 *)(p + 2)));
   if (clk != priv->hw_refclk)
    pr_warn("SDD file doesn't match configured refclk (%d vs %d)\n",
     clk, priv->hw_refclk);
   break;
  }
  default:
   break;
  }
  p += p[1] + 2;
 }

 if (!priv->bt_present) {
  pr_debug("PTA element NOT found.\n");
  priv->conf_listen_interval = 0;
 }
 return ret;
}
