
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_device {int dummy; } ;


 int GFP_KERNEL ;
 int ds_write_block (struct ds_device*,int *,int) ;
 int kfree (int *) ;
 int * kmemdup (int const*,int,int ) ;

__attribute__((used)) static void ds9490r_write_block(void *data, const u8 *buf, int len)
{
 struct ds_device *dev = data;
 u8 *tbuf;

 if (len <= 0)
  return;

 tbuf = kmemdup(buf, len, GFP_KERNEL);
 if (!tbuf)
  return;

 ds_write_block(dev, tbuf, len);

 kfree(tbuf);
}
