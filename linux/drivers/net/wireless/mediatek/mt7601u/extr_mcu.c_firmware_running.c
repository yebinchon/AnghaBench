
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int dummy; } ;


 int MT_MCU_COM_REG0 ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;

__attribute__((used)) static inline int firmware_running(struct mt7601u_dev *dev)
{
 return mt7601u_rr(dev, MT_MCU_COM_REG0) == 1;
}
