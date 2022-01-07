
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct dlfb_data* par; } ;
struct dlfb_data {int cpu_kcycles_used; int bytes_sent; int bytes_identical; int bytes_rendered; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int atomic_set (int *,int ) ;
 struct fb_info* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t metrics_reset_store(struct device *fbdev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct fb_info *fb_info = dev_get_drvdata(fbdev);
 struct dlfb_data *dlfb = fb_info->par;

 atomic_set(&dlfb->bytes_rendered, 0);
 atomic_set(&dlfb->bytes_identical, 0);
 atomic_set(&dlfb->bytes_sent, 0);
 atomic_set(&dlfb->cpu_kcycles_used, 0);

 return count;
}
