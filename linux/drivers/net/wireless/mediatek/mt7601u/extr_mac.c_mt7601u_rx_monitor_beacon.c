
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt7601u_rxwi {int freq_off; } ;
struct mt7601u_dev {int avg_rssi; int bcn_phy_mode; int bcn_freq_off; } ;


 int FIELD_GET (int ,int ) ;
 int MT_RXWI_RATE_PHY ;
 int ewma_rssi_add (int *,int) ;

__attribute__((used)) static void
mt7601u_rx_monitor_beacon(struct mt7601u_dev *dev, struct mt7601u_rxwi *rxwi,
     u16 rate, int rssi)
{
 dev->bcn_freq_off = rxwi->freq_off;
 dev->bcn_phy_mode = FIELD_GET(MT_RXWI_RATE_PHY, rate);
 ewma_rssi_add(&dev->avg_rssi, -rssi);
}
