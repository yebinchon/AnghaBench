
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxacru_data {int usbatm; } ;
typedef int ssize_t ;
typedef int __le32 ;


 int CAP_NET_ADMIN ;
 int CMD_MAX_CONFIG ;
 int CMD_PACKET_SIZE ;
 int CM_REQUEST_CARD_DATA_SET ;
 int EACCES ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int atm_err (int ,char*,int) ;
 int atm_info (int ,char*,char*) ;
 int capable (int ) ;
 int cpu_to_le32 (int) ;
 int cxacru_cm (struct cxacru_data*,int ,int *,int,int *,int ) ;
 int le32_to_cpu (int ) ;
 int snprintf (char*,int,char*,int,int) ;
 int sscanf (char const*,char*,int*,int*,int*) ;
 int strlen (char const*) ;
 int to_usb_interface (struct device*) ;
 struct cxacru_data* to_usbatm_driver_data (int ) ;

__attribute__((used)) static ssize_t adsl_config_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct cxacru_data *instance = to_usbatm_driver_data(
   to_usb_interface(dev));
 int len = strlen(buf);
 int ret, pos, num;
 __le32 data[CMD_PACKET_SIZE / 4];

 if (!capable(CAP_NET_ADMIN))
  return -EACCES;

 if (instance == ((void*)0))
  return -ENODEV;

 pos = 0;
 num = 0;
 while (pos < len) {
  int tmp;
  u32 index;
  u32 value;

  ret = sscanf(buf + pos, "%x=%x%n", &index, &value, &tmp);
  if (ret < 2)
   return -EINVAL;
  if (index > 0x7f)
   return -EINVAL;
  if (tmp < 0 || tmp > len - pos)
   return -EINVAL;
  pos += tmp;


  if (buf[pos] == '\n' && pos == len-1)
   pos++;

  data[num * 2 + 1] = cpu_to_le32(index);
  data[num * 2 + 2] = cpu_to_le32(value);
  num++;




  if (pos >= len || num >= CMD_MAX_CONFIG) {
   char log[CMD_MAX_CONFIG * 12 + 1];

   data[0] = cpu_to_le32(num);
   ret = cxacru_cm(instance, CM_REQUEST_CARD_DATA_SET,
    (u8 *) data, 4 + num * 8, ((void*)0), 0);
   if (ret < 0) {
    atm_err(instance->usbatm,
     "set card data returned %d\n", ret);
    return -EIO;
   }

   for (tmp = 0; tmp < num; tmp++)
    snprintf(log + tmp*12, 13, " %02x=%08x",
     le32_to_cpu(data[tmp * 2 + 1]),
     le32_to_cpu(data[tmp * 2 + 2]));
   atm_info(instance->usbatm, "config%s\n", log);
   num = 0;
  }
 }

 return len;
}
