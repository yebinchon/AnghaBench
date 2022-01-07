
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int driver_data; } ;
struct pci_dev {int dev; } ;
struct neofb_par {int pci_burst; int lcd_stretch; int palette; int external_display; int internal_display; int libretto; } ;
struct TYPE_2__ {int accel; int ypanstep; scalar_t__ ywrapstep; scalar_t__ xpanstep; scalar_t__ type_aux; int type; int id; } ;
struct fb_info {int flags; int pseudo_palette; int * fbops; TYPE_1__ fix; struct neofb_par* par; } ;


 int FBINFO_DEFAULT ;
 int FBINFO_HWACCEL_COPYAREA ;
 int FBINFO_HWACCEL_FILLRECT ;
 int FBINFO_HWACCEL_IMAGEBLIT ;
 int FBINFO_HWACCEL_YPAN ;
 int FB_TYPE_PACKED_PIXELS ;
 int external ;
 struct fb_info* framebuffer_alloc (int,int *) ;
 int internal ;
 int libretto ;
 int neofb_ops ;
 int nopciburst ;
 int nostretch ;
 int snprintf (int ,int,char*) ;

__attribute__((used)) static struct fb_info *neo_alloc_fb_info(struct pci_dev *dev,
      const struct pci_device_id *id)
{
 struct fb_info *info;
 struct neofb_par *par;

 info = framebuffer_alloc(sizeof(struct neofb_par), &dev->dev);

 if (!info)
  return ((void*)0);

 par = info->par;

 info->fix.accel = id->driver_data;

 par->pci_burst = !nopciburst;
 par->lcd_stretch = !nostretch;
 par->libretto = libretto;

 par->internal_display = internal;
 par->external_display = external;
 info->flags = FBINFO_DEFAULT | FBINFO_HWACCEL_YPAN;

 switch (info->fix.accel) {
 case 136:
  snprintf(info->fix.id, sizeof(info->fix.id),
    "MagicGraph 128");
  break;
 case 135:
  snprintf(info->fix.id, sizeof(info->fix.id),
    "MagicGraph 128V");
  break;
 case 134:
  snprintf(info->fix.id, sizeof(info->fix.id),
    "MagicGraph 128ZV");
  break;
 case 133:
  snprintf(info->fix.id, sizeof(info->fix.id),
    "MagicGraph 128ZV+");
  break;
 case 132:
  snprintf(info->fix.id, sizeof(info->fix.id),
    "MagicGraph 128XD");
  break;
 case 131:
  snprintf(info->fix.id, sizeof(info->fix.id),
    "MagicGraph 256AV");
  info->flags |= FBINFO_HWACCEL_IMAGEBLIT |
                 FBINFO_HWACCEL_COPYAREA |
                        FBINFO_HWACCEL_FILLRECT;
  break;
 case 130:
  snprintf(info->fix.id, sizeof(info->fix.id),
    "MagicGraph 256AV+");
  info->flags |= FBINFO_HWACCEL_IMAGEBLIT |
                 FBINFO_HWACCEL_COPYAREA |
                        FBINFO_HWACCEL_FILLRECT;
  break;
 case 129:
  snprintf(info->fix.id, sizeof(info->fix.id),
    "MagicGraph 256ZX");
  info->flags |= FBINFO_HWACCEL_IMAGEBLIT |
                 FBINFO_HWACCEL_COPYAREA |
                        FBINFO_HWACCEL_FILLRECT;
  break;
 case 128:
  snprintf(info->fix.id, sizeof(info->fix.id),
    "MagicGraph 256XL+");
  info->flags |= FBINFO_HWACCEL_IMAGEBLIT |
                 FBINFO_HWACCEL_COPYAREA |
                        FBINFO_HWACCEL_FILLRECT;
  break;
 }

 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.type_aux = 0;
 info->fix.xpanstep = 0;
 info->fix.ypanstep = 4;
 info->fix.ywrapstep = 0;
 info->fix.accel = id->driver_data;

 info->fbops = &neofb_ops;
 info->pseudo_palette = par->palette;
 return info;
}
