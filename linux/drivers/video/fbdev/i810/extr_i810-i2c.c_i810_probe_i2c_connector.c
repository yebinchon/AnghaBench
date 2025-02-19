
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i810fb_par {int ddc_num; TYPE_1__* chan; } ;
struct fb_info {int device; struct i810fb_par* par; } ;
struct TYPE_2__ {int adapter; } ;


 int DPRINTK (char*,...) ;
 int EDID_LENGTH ;
 int GFP_KERNEL ;
 int * fb_ddc_read (int *) ;
 int * fb_firmware_edid (int ) ;
 int * kmemdup (int const*,int ,int ) ;

int i810_probe_i2c_connector(struct fb_info *info, u8 **out_edid, int conn)
{
 struct i810fb_par *par = info->par;
        u8 *edid = ((void*)0);

 DPRINTK("i810-i2c: Probe DDC%i Bus\n", conn+1);
 if (conn < par->ddc_num) {
  edid = fb_ddc_read(&par->chan[conn].adapter);
 } else {
  const u8 *e = fb_firmware_edid(info->device);

  if (e != ((void*)0)) {
   DPRINTK("i810-i2c: Getting EDID from BIOS\n");
   edid = kmemdup(e, EDID_LENGTH, GFP_KERNEL);
  }
 }

 *out_edid = edid;

        return (edid) ? 0 : 1;
}
