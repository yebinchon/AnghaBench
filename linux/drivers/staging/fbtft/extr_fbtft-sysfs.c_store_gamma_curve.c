
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int tmp_curves ;
struct TYPE_4__ {int num_curves; int num_values; int lock; int curves; } ;
struct TYPE_3__ {int (* set_gamma ) (struct fbtft_par*,int *) ;} ;
struct fbtft_par {TYPE_2__ gamma; TYPE_1__ fbtftops; } ;
struct fb_info {struct fbtft_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FBTFT_GAMMA_MAX_VALUES_TOTAL ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int fbtft_gamma_parse_str (struct fbtft_par*,int *,char const*,size_t) ;
 int memcpy (int ,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fbtft_par*,int *) ;

__attribute__((used)) static ssize_t store_gamma_curve(struct device *device,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct fb_info *fb_info = dev_get_drvdata(device);
 struct fbtft_par *par = fb_info->par;
 u32 tmp_curves[FBTFT_GAMMA_MAX_VALUES_TOTAL];
 int ret;

 ret = fbtft_gamma_parse_str(par, tmp_curves, buf, count);
 if (ret)
  return ret;

 ret = par->fbtftops.set_gamma(par, tmp_curves);
 if (ret)
  return ret;

 mutex_lock(&par->gamma.lock);
 memcpy(par->gamma.curves, tmp_curves,
        par->gamma.num_curves * par->gamma.num_values *
        sizeof(tmp_curves[0]));
 mutex_unlock(&par->gamma.lock);

 return count;
}
