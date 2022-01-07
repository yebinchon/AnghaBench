
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_device {int dummy; } ;


 int GFP_KERNEL ;
 int ds_read_block (struct ds_device*,int*,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static u8 ds9490r_read_block(void *data, u8 *buf, int len)
{
 struct ds_device *dev = data;
 int err;
 u8 *tbuf;

 if (len <= 0)
  return 0;

 tbuf = kmalloc(len, GFP_KERNEL);
 if (!tbuf)
  return 0;

 err = ds_read_block(dev, tbuf, len);
 if (err >= 0)
  memcpy(buf, tbuf, len);

 kfree(tbuf);

 return err >= 0 ? len : 0;
}
