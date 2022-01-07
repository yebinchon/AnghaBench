
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xmit_priv {int tx_drop; int tx_bytes; int tx_pkts; } ;
struct TYPE_4__ {scalar_t__ last_txcmdsz; } ;
struct xmit_frame {TYPE_2__ attrib; int * pkt; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* LedControlHandler ) (struct _adapter*,int ) ;} ;
struct _adapter {TYPE_1__ ledpriv; struct xmit_priv xmitpriv; } ;
typedef int _pkt ;


 int LED_CTL_TX ;
 int dev_kfree_skb_any (int *) ;
 struct _adapter* netdev_priv (struct net_device*) ;
 struct xmit_frame* r8712_alloc_xmitframe (struct xmit_priv*) ;
 int r8712_free_xmitframe (struct xmit_priv*,struct xmit_frame*) ;
 int r8712_if_up (struct _adapter*) ;
 scalar_t__ r8712_pre_xmit (struct _adapter*,struct xmit_frame*) ;
 scalar_t__ r8712_update_attrib (struct _adapter*,int *,TYPE_2__*) ;
 int stub1 (struct _adapter*,int ) ;

int r8712_xmit_entry(_pkt *pkt, struct net_device *netdev)
{
 struct xmit_frame *xmitframe = ((void*)0);
 struct _adapter *adapter = netdev_priv(netdev);
 struct xmit_priv *xmitpriv = &(adapter->xmitpriv);

 if (!r8712_if_up(adapter))
  goto _xmit_entry_drop;

 xmitframe = r8712_alloc_xmitframe(xmitpriv);
 if (!xmitframe)
  goto _xmit_entry_drop;

 if (r8712_update_attrib(adapter, pkt, &xmitframe->attrib))
  goto _xmit_entry_drop;

 adapter->ledpriv.LedControlHandler(adapter, LED_CTL_TX);
 xmitframe->pkt = pkt;
 if (r8712_pre_xmit(adapter, xmitframe)) {

  dev_kfree_skb_any(pkt);
  xmitframe->pkt = ((void*)0);
 }
 xmitpriv->tx_pkts++;
 xmitpriv->tx_bytes += xmitframe->attrib.last_txcmdsz;
 return 0;
_xmit_entry_drop:
 if (xmitframe)
  r8712_free_xmitframe(xmitpriv, xmitframe);
 xmitpriv->tx_drop++;
 dev_kfree_skb_any(pkt);
 return 0;
}
