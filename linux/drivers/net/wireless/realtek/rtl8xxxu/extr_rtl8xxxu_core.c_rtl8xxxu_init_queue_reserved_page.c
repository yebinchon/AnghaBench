
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8xxxu_priv {scalar_t__ ep_tx_normal_queue; scalar_t__ ep_tx_low_queue; scalar_t__ ep_tx_high_queue; struct rtl8xxxu_fileops* fops; } ;
struct rtl8xxxu_fileops {int page_num_hi; int page_num_lo; int page_num_norm; int total_page_num; } ;


 int REG_RQPN ;
 int REG_RQPN_NPQ ;
 int RQPN_EPQ_SHIFT ;
 int RQPN_HI_PQ_SHIFT ;
 int RQPN_LOAD ;
 int RQPN_LO_PQ_SHIFT ;
 int RQPN_NPQ_SHIFT ;
 int RQPN_PUB_PQ_SHIFT ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;

__attribute__((used)) static void rtl8xxxu_init_queue_reserved_page(struct rtl8xxxu_priv *priv)
{
 struct rtl8xxxu_fileops *fops = priv->fops;
 u32 hq, lq, nq, eq, pubq;
 u32 val32;

 hq = 0;
 lq = 0;
 nq = 0;
 eq = 0;
 pubq = 0;

 if (priv->ep_tx_high_queue)
  hq = fops->page_num_hi;
 if (priv->ep_tx_low_queue)
  lq = fops->page_num_lo;
 if (priv->ep_tx_normal_queue)
  nq = fops->page_num_norm;

 val32 = (nq << RQPN_NPQ_SHIFT) | (eq << RQPN_EPQ_SHIFT);
 rtl8xxxu_write32(priv, REG_RQPN_NPQ, val32);

 pubq = fops->total_page_num - hq - lq - nq - 1;

 val32 = RQPN_LOAD;
 val32 |= (hq << RQPN_HI_PQ_SHIFT);
 val32 |= (lq << RQPN_LO_PQ_SHIFT);
 val32 |= (pubq << RQPN_PUB_PQ_SHIFT);

 rtl8xxxu_write32(priv, REG_RQPN, val32);
}
