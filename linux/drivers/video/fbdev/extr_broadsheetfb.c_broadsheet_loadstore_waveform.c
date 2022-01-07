
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int size; int data; } ;
struct fb_info {struct broadsheetfb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct broadsheetfb_par {int io_lock; } ;
typedef int ssize_t ;


 int EINVAL ;
 int broadsheet_store_waveform_to_spiflash (struct broadsheetfb_par*,int ,int) ;
 int dev_err (struct device*,char*) ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,struct device*) ;

__attribute__((used)) static ssize_t broadsheet_loadstore_waveform(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t len)
{
 int err;
 struct fb_info *info = dev_get_drvdata(dev);
 struct broadsheetfb_par *par = info->par;
 const struct firmware *fw_entry;

 if (len < 1)
  return -EINVAL;

 err = request_firmware(&fw_entry, "broadsheet.wbf", dev);
 if (err < 0) {
  dev_err(dev, "Failed to get broadsheet waveform\n");
  goto err_failed;
 }


 if ((fw_entry->size < 8*1024) || (fw_entry->size > 64*1024)) {
  dev_err(dev, "Invalid waveform\n");
  err = -EINVAL;
  goto err_fw;
 }

 mutex_lock(&(par->io_lock));
 err = broadsheet_store_waveform_to_spiflash(par, fw_entry->data,
       fw_entry->size);

 mutex_unlock(&(par->io_lock));
 if (err < 0) {
  dev_err(dev, "Failed to store broadsheet waveform\n");
  goto err_fw;
 }

 dev_info(dev, "Stored broadsheet waveform, size %zd\n", fw_entry->size);

 err = len;

err_fw:
 release_firmware(fw_entry);
err_failed:
 return err;
}
