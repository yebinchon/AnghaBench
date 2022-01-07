
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mt7601u_dev {int vendor_req_mutex; } ;


 int __mt7601u_vendor_single_wr (struct mt7601u_dev*,int const,int const,int const) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mt7601u_vendor_single_wr(struct mt7601u_dev *dev, const u8 req,
        const u16 offset, const u32 val)
{
 int ret;

 mutex_lock(&dev->vendor_req_mutex);
 ret = __mt7601u_vendor_single_wr(dev, req, offset, val);
 mutex_unlock(&dev->vendor_req_mutex);

 return ret;
}
