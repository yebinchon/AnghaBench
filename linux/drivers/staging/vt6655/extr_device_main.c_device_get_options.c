
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_options {int bbp_type; int long_retry; int short_retry; int int_works; int * tx_descs; int rx_descs1; int rx_descs0; } ;
struct vnt_private {struct vnt_options opts; } ;


 int BBP_TYPE_DEF ;
 int INT_WORKS_DEF ;
 int LONG_RETRY_DEF ;
 int RX_DESC_DEF0 ;
 int RX_DESC_DEF1 ;
 int SHORT_RETRY_DEF ;
 int TX_DESC_DEF0 ;
 int TX_DESC_DEF1 ;

__attribute__((used)) static void device_get_options(struct vnt_private *priv)
{
 struct vnt_options *opts = &priv->opts;

 opts->rx_descs0 = RX_DESC_DEF0;
 opts->rx_descs1 = RX_DESC_DEF1;
 opts->tx_descs[0] = TX_DESC_DEF0;
 opts->tx_descs[1] = TX_DESC_DEF1;
 opts->int_works = INT_WORKS_DEF;

 opts->short_retry = SHORT_RETRY_DEF;
 opts->long_retry = LONG_RETRY_DEF;
 opts->bbp_type = BBP_TYPE_DEF;
}
