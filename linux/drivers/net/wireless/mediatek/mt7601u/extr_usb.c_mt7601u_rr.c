
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int vendor_req_mutex; } ;


 int __mt7601u_rr (struct mt7601u_dev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u32 mt7601u_rr(struct mt7601u_dev *dev, u32 offset)
{
 u32 ret;

 mutex_lock(&dev->vendor_req_mutex);
 ret = __mt7601u_rr(dev, offset);
 mutex_unlock(&dev->vendor_req_mutex);

 return ret;
}
