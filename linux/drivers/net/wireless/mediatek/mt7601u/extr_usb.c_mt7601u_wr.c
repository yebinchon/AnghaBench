
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mt7601u_dev {int dummy; } ;


 int MT_VEND_WRITE ;
 scalar_t__ USHRT_MAX ;
 int WARN_ONCE (int,char*,scalar_t__) ;
 int mt7601u_vendor_single_wr (struct mt7601u_dev*,int ,scalar_t__,scalar_t__) ;

void mt7601u_wr(struct mt7601u_dev *dev, u32 offset, u32 val)
{
 WARN_ONCE(offset > USHRT_MAX, "write high off:%08x", offset);

 mt7601u_vendor_single_wr(dev, MT_VEND_WRITE, offset, val);
}
