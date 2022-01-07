
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb_priv {int num_tds_done; } ;
struct urb {struct urb_priv* hcpriv; } ;



__attribute__((used)) static void inc_td_cnt(struct urb *urb)
{
 struct urb_priv *urb_priv = urb->hcpriv;

 urb_priv->num_tds_done++;
}
