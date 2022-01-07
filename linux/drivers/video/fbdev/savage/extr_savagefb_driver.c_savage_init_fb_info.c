
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct savagefb_par {scalar_t__ chip; int pseudo_palette; int SavageWaitFifo; int SavageWaitIdle; struct pci_dev* pcidev; } ;
struct pci_device_id {int driver_data; } ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int size; int scan_align; int buf_align; int access_align; scalar_t__ addr; } ;
struct TYPE_4__ {int width; int height; scalar_t__ accel_flags; int activate; scalar_t__ nonstd; } ;
struct TYPE_6__ {int ypanstep; int accel; int id; scalar_t__ ywrapstep; scalar_t__ type_aux; int type; } ;
struct fb_info {int flags; int cmap; TYPE_2__ pixmap; int pseudo_palette; int * fbops; TYPE_1__ var; TYPE_3__ fix; struct savagefb_par* par; } ;


 int ENOMEM ;
 int FBINFO_DEFAULT ;
 int FBINFO_HWACCEL_COPYAREA ;
 int FBINFO_HWACCEL_FILLRECT ;
 int FBINFO_HWACCEL_IMAGEBLIT ;
 int FBINFO_HWACCEL_XPAN ;
 int FBINFO_HWACCEL_YPAN ;
 int FB_ACTIVATE_NOW ;
 int FB_TYPE_PACKED_PIXELS ;
 int GFP_KERNEL ;
 int NR_PALETTE ;
 void* S3_PROSAVAGE ;
 void* S3_PROSAVAGEDDR ;
 scalar_t__ S3_SAVAGE2000 ;
 void* S3_SAVAGE3D ;
 scalar_t__ S3_SAVAGE3D_SERIES (scalar_t__) ;
 scalar_t__ S3_SAVAGE4 ;
 scalar_t__ S3_SAVAGE4_SERIES (scalar_t__) ;
 void* S3_SAVAGE_MX ;
 scalar_t__ S3_SUPERSAVAGE ;
 void* S3_TWISTER ;
 int fb_alloc_cmap (int *,int ,int ) ;
 scalar_t__ kcalloc (int,int,int ) ;
 int savage2000_waitfifo ;
 int savage2000_waitidle ;
 int savage3D_waitfifo ;
 int savage3D_waitidle ;
 int savage4_waitfifo ;
 int savage4_waitidle ;
 int savagefb_ops ;
 int snprintf (int ,int,char*) ;

__attribute__((used)) static int savage_init_fb_info(struct fb_info *info, struct pci_dev *dev,
          const struct pci_device_id *id)
{
 struct savagefb_par *par = info->par;
 int err = 0;

 par->pcidev = dev;

 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.type_aux = 0;
 info->fix.ypanstep = 1;
 info->fix.ywrapstep = 0;
 info->fix.accel = id->driver_data;

 switch (info->fix.accel) {
 case 128:
  par->chip = S3_SUPERSAVAGE;
  snprintf(info->fix.id, 16, "SuperSavage");
  break;
 case 133:
  par->chip = S3_SAVAGE4;
  snprintf(info->fix.id, 16, "Savage4");
  break;
 case 135:
  par->chip = S3_SAVAGE3D;
  snprintf(info->fix.id, 16, "Savage3D");
  break;
 case 134:
  par->chip = S3_SAVAGE3D;
  snprintf(info->fix.id, 16, "Savage3D-MV");
  break;
 case 136:
  par->chip = S3_SAVAGE2000;
  snprintf(info->fix.id, 16, "Savage2000");
  break;
 case 129:
  par->chip = S3_SAVAGE_MX;
  snprintf(info->fix.id, 16, "Savage/MX-MV");
  break;
 case 130:
  par->chip = S3_SAVAGE_MX;
  snprintf(info->fix.id, 16, "Savage/MX");
  break;
 case 131:
  par->chip = S3_SAVAGE_MX;
  snprintf(info->fix.id, 16, "Savage/IX-MV");
  break;
 case 132:
  par->chip = S3_SAVAGE_MX;
  snprintf(info->fix.id, 16, "Savage/IX");
  break;
 case 139:
  par->chip = S3_PROSAVAGE;
  snprintf(info->fix.id, 16, "ProSavagePM");
  break;
 case 140:
  par->chip = S3_PROSAVAGE;
  snprintf(info->fix.id, 16, "ProSavageKM");
  break;
 case 137:
  par->chip = S3_TWISTER;
  snprintf(info->fix.id, 16, "TwisterP");
  break;
 case 138:
  par->chip = S3_TWISTER;
  snprintf(info->fix.id, 16, "TwisterK");
  break;
 case 142:
  par->chip = S3_PROSAVAGEDDR;
  snprintf(info->fix.id, 16, "ProSavageDDR");
  break;
 case 141:
  par->chip = S3_PROSAVAGEDDR;
  snprintf(info->fix.id, 16, "ProSavage8");
  break;
 }

 if (S3_SAVAGE3D_SERIES(par->chip)) {
  par->SavageWaitIdle = savage3D_waitidle;
  par->SavageWaitFifo = savage3D_waitfifo;
 } else if (S3_SAVAGE4_SERIES(par->chip) ||
     S3_SUPERSAVAGE == par->chip) {
  par->SavageWaitIdle = savage4_waitidle;
  par->SavageWaitFifo = savage4_waitfifo;
 } else {
  par->SavageWaitIdle = savage2000_waitidle;
  par->SavageWaitFifo = savage2000_waitfifo;
 }

 info->var.nonstd = 0;
 info->var.activate = FB_ACTIVATE_NOW;
 info->var.width = -1;
 info->var.height = -1;
 info->var.accel_flags = 0;

 info->fbops = &savagefb_ops;
 info->flags = FBINFO_DEFAULT |
                 FBINFO_HWACCEL_YPAN |
                 FBINFO_HWACCEL_XPAN;

 info->pseudo_palette = par->pseudo_palette;
 return err;
}
