
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_priv {int curr_ch; int curr_txpoweridx; scalar_t__ rx_crcerrpktcount; scalar_t__ rx_pktcount; scalar_t__ tx_pktcount; scalar_t__ check_mp_pkt; int antenna_rx; int antenna_tx; scalar_t__ curr_rateidx; int curr_modem; int mode; } ;


 int ANTENNA_A ;
 int ANTENNA_AB ;
 int MIXED_PHY ;
 int _LOOPBOOK_MODE_ ;

__attribute__((used)) static void _init_mp_priv_(struct mp_priv *pmp_priv)
{
 pmp_priv->mode = _LOOPBOOK_MODE_;
 pmp_priv->curr_ch = 1;
 pmp_priv->curr_modem = MIXED_PHY;
 pmp_priv->curr_rateidx = 0;
 pmp_priv->curr_txpoweridx = 0x14;
 pmp_priv->antenna_tx = ANTENNA_A;
 pmp_priv->antenna_rx = ANTENNA_AB;
 pmp_priv->check_mp_pkt = 0;
 pmp_priv->tx_pktcount = 0;
 pmp_priv->rx_pktcount = 0;
 pmp_priv->rx_crcerrpktcount = 0;
}
