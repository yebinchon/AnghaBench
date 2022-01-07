
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int MAC_WCID_ATTR_ENTRY (int) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2800_delete_wcid_attr(struct rt2x00_dev *rt2x00dev, int wcid)
{
 u32 offset;
 offset = MAC_WCID_ATTR_ENTRY(wcid);
 rt2800_register_write(rt2x00dev, offset, 0);
}
