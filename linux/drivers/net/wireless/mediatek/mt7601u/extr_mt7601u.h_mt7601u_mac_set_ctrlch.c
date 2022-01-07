
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dummy; } ;


 int MT_TX_BAND_CFG ;
 int mt7601u_rmc (struct mt7601u_dev*,int ,int,int) ;

__attribute__((used)) static inline u32 mt7601u_mac_set_ctrlch(struct mt7601u_dev *dev, bool below)
{
 return mt7601u_rmc(dev, MT_TX_BAND_CFG, 1, below);
}
