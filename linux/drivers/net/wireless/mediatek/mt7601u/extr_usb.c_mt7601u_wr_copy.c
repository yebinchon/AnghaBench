
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dummy; } ;


 int WARN_ONCE (int,char*,int) ;
 int mt7601u_burst_write_regs (struct mt7601u_dev*,int,void const*,int) ;

void mt7601u_wr_copy(struct mt7601u_dev *dev, u32 offset,
       const void *data, int len)
{
 WARN_ONCE(offset & 3, "unaligned write copy off:%08x", offset);
 WARN_ONCE(len & 3, "short write copy off:%08x", offset);

 mt7601u_burst_write_regs(dev, offset, data, len / 4);
}
