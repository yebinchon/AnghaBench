
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt_fw_blob {int size; scalar_t__ data; } ;
struct net_device {int dev; } ;
struct firmware {int size; int data; } ;


 scalar_t__ MAX_FW_SIZE ;
 int memcpy (scalar_t__,int ,int) ;
 int memset (scalar_t__,int ,int) ;
 int netdev_err (struct net_device*,char*,char const*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 scalar_t__ round_up (int,int) ;
 int swab32p (int *) ;

__attribute__((used)) static bool _rtl92e_fw_prepare(struct net_device *dev, struct rt_fw_blob *blob,
          const char *name, u8 padding)
{
 const struct firmware *fw;
 int rc, i;
 bool ret = 1;

 rc = request_firmware(&fw, name, &dev->dev);
 if (rc < 0)
  return 0;

 if (round_up(fw->size, 4) > MAX_FW_SIZE - padding) {
  netdev_err(dev, "Firmware image %s too big for the device.\n",
      name);
  ret = 0;
  goto out;
 }

 if (padding)
  memset(blob->data, 0, padding);
 if (fw->size % 4)
  memset(blob->data + padding + fw->size, 0, 4);
 memcpy(blob->data + padding, fw->data, fw->size);

 blob->size = round_up(fw->size, 4) + padding;


 for (i = padding; i < blob->size; i += 4) {
  u32 *data = (u32 *)(blob->data + i);
  *data = swab32p(data);
 }
out:
 release_firmware(fw);
 return ret;
}
