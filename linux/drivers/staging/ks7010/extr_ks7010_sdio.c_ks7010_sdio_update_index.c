
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ks_wlan_private {int dummy; } ;
typedef int index ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int READ_INDEX_REG ;
 int WRITE_INDEX_REG ;
 int kfree (unsigned char*) ;
 unsigned char* kmemdup (int *,int,int ) ;
 int ks7010_sdio_write (struct ks_wlan_private*,int ,unsigned char*,int) ;

__attribute__((used)) static int ks7010_sdio_update_index(struct ks_wlan_private *priv, u32 index)
{
 int ret;
 unsigned char *data_buf;

 data_buf = kmemdup(&index, sizeof(u32), GFP_KERNEL);
 if (!data_buf)
  return -ENOMEM;

 ret = ks7010_sdio_write(priv, WRITE_INDEX_REG, data_buf, sizeof(index));
 if (ret)
  goto err_free_data_buf;

 ret = ks7010_sdio_write(priv, READ_INDEX_REG, data_buf, sizeof(index));
 if (ret)
  goto err_free_data_buf;

 return 0;

err_free_data_buf:
 kfree(data_buf);

 return ret;
}
