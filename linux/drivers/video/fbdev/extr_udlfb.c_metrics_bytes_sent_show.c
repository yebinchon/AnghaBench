
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct dlfb_data* par; } ;
struct dlfb_data {int bytes_sent; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int atomic_read (int *) ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t metrics_bytes_sent_show(struct device *fbdev,
       struct device_attribute *a, char *buf) {
 struct fb_info *fb_info = dev_get_drvdata(fbdev);
 struct dlfb_data *dlfb = fb_info->par;
 return snprintf(buf, PAGE_SIZE, "%u\n",
   atomic_read(&dlfb->bytes_sent));
}
