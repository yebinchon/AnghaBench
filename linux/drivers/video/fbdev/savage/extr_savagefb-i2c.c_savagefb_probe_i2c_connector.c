
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int adapter; scalar_t__ par; } ;
struct savagefb_par {TYPE_1__ chan; } ;
struct fb_info {int device; struct savagefb_par* par; } ;


 int EDID_LENGTH ;
 int GFP_KERNEL ;
 int * fb_ddc_read (int *) ;
 int * fb_firmware_edid (int ) ;
 int * kmemdup (int const*,int ,int ) ;

int savagefb_probe_i2c_connector(struct fb_info *info, u8 **out_edid)
{
 struct savagefb_par *par = info->par;
 u8 *edid;

 if (par->chan.par)
  edid = fb_ddc_read(&par->chan.adapter);
 else
  edid = ((void*)0);

 if (!edid) {

  const u8 *e = fb_firmware_edid(info->device);

  if (e)
   edid = kmemdup(e, EDID_LENGTH, GFP_KERNEL);
 }

 *out_edid = edid;

 return (edid) ? 0 : 1;
}
