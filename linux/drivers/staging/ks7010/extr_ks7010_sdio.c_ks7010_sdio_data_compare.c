
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ks_wlan_private {int net_dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ROM_BUFF_SIZE ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int ks7010_sdio_read (struct ks_wlan_private*,int ,int *,unsigned int) ;
 scalar_t__ memcmp (int *,int *,unsigned int) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static int ks7010_sdio_data_compare(struct ks_wlan_private *priv, u32 address,
        u8 *data, unsigned int size)
{
 int ret;
 u8 *read_buf;

 read_buf = kmalloc(ROM_BUFF_SIZE, GFP_KERNEL);
 if (!read_buf)
  return -ENOMEM;

 ret = ks7010_sdio_read(priv, address, read_buf, size);
 if (ret)
  goto err_free_read_buf;

 if (memcmp(data, read_buf, size) != 0) {
  ret = -EIO;
  netdev_err(priv->net_dev, "data compare error (%d)\n", ret);
  goto err_free_read_buf;
 }

 return 0;

err_free_read_buf:
 kfree(read_buf);

 return ret;
}
