
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int vendor_req_mutex; } ;


 int MT_VEND_WRITE ;
 int __mt7601u_rr (struct mt7601u_dev*,int) ;
 int __mt7601u_vendor_single_wr (struct mt7601u_dev*,int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u32 mt7601u_rmw(struct mt7601u_dev *dev, u32 offset, u32 mask, u32 val)
{
 mutex_lock(&dev->vendor_req_mutex);
 val |= __mt7601u_rr(dev, offset) & ~mask;
 __mt7601u_vendor_single_wr(dev, MT_VEND_WRITE, offset, val);
 mutex_unlock(&dev->vendor_req_mutex);

 return val;
}
