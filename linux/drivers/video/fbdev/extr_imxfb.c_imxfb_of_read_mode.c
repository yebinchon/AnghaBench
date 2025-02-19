
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_videomode {int * name; } ;
struct imx_fb_videomode {int bpp; int pcr; int aus_mode; struct fb_videomode mode; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int OF_USE_NATIVE_MODE ;
 int dev_err (struct device*,char*) ;
 int of_get_fb_videomode (struct device_node*,struct fb_videomode*,int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_string (struct device_node*,char*,int **) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int imxfb_of_read_mode(struct device *dev, struct device_node *np,
  struct imx_fb_videomode *imxfb_mode)
{
 int ret;
 struct fb_videomode *of_mode = &imxfb_mode->mode;
 u32 bpp;
 u32 pcr;

 ret = of_property_read_string(np, "model", &of_mode->name);
 if (ret)
  of_mode->name = ((void*)0);

 ret = of_get_fb_videomode(np, of_mode, OF_USE_NATIVE_MODE);
 if (ret) {
  dev_err(dev, "Failed to get videomode from DT\n");
  return ret;
 }

 ret = of_property_read_u32(np, "bits-per-pixel", &bpp);
 ret |= of_property_read_u32(np, "fsl,pcr", &pcr);

 if (ret) {
  dev_err(dev, "Failed to read bpp and pcr from DT\n");
  return -EINVAL;
 }

 if (bpp < 1 || bpp > 255) {
  dev_err(dev, "Bits per pixel have to be between 1 and 255\n");
  return -EINVAL;
 }

 imxfb_mode->bpp = bpp;
 imxfb_mode->pcr = pcr;




 imxfb_mode->aus_mode = of_property_read_bool(np, "fsl,aus-mode");

 return 0;
}
