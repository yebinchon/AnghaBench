
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int de_wait; } ;
struct sm750_dev {int vidmem_size; int fb_count; scalar_t__ revid; int dataflow; int pvMem; TYPE_1__ accel; int hwCursor; } ;
struct lynxfb_crtc {int vidmem_size; int line_pad; int xpanstep; int ypanstep; int oScreen; int vScreen; void* channel; scalar_t__ ywrapstep; } ;
struct lynxfb_output {void* paths; int proc_setBLANK; } ;
struct lynxfb_par {int index; struct lynxfb_crtc crtc; struct lynxfb_output output; struct sm750_dev* dev; } ;


 int EINVAL ;
 scalar_t__ SM750LE_REVISION_ID ;
 int g_hwcursor ;
 int hw_sm750_deWait ;
 int hw_sm750_setBLANK ;
 int hw_sm750le_deWait ;
 int hw_sm750le_setBLANK ;
 int pr_info (char*) ;
 void* sm750_crt ;


 void* sm750_panel ;
 void* sm750_pnc ;
 void* sm750_primary ;
 void* sm750_secondary ;



__attribute__((used)) static int sm750fb_set_drv(struct lynxfb_par *par)
{
 int ret;
 struct sm750_dev *sm750_dev;
 struct lynxfb_output *output;
 struct lynxfb_crtc *crtc;

 ret = 0;

 sm750_dev = par->dev;
 output = &par->output;
 crtc = &par->crtc;

 crtc->vidmem_size = sm750_dev->vidmem_size;
 if (sm750_dev->fb_count > 1)
  crtc->vidmem_size >>= 1;


 sm750_dev->hwCursor = g_hwcursor;

 crtc->line_pad = 16;
 crtc->xpanstep = 8;
 crtc->ypanstep = 1;
 crtc->ywrapstep = 0;

 output->proc_setBLANK = (sm750_dev->revid == SM750LE_REVISION_ID) ?
     hw_sm750le_setBLANK : hw_sm750_setBLANK;

 sm750_dev->accel.de_wait = (sm750_dev->revid == SM750LE_REVISION_ID) ?
        hw_sm750le_deWait : hw_sm750_deWait;
 switch (sm750_dev->dataflow) {
 case 129:
  output->paths = sm750_pnc;
  crtc->channel = sm750_primary;
  crtc->oScreen = 0;
  crtc->vScreen = sm750_dev->pvMem;
  pr_info("use simul primary mode\n");
  break;
 case 128:
  output->paths = sm750_pnc;
  crtc->channel = sm750_secondary;
  crtc->oScreen = 0;
  crtc->vScreen = sm750_dev->pvMem;
  break;
 case 131:
  if (par->index == 0) {
   output->paths = sm750_panel;
   crtc->channel = sm750_primary;
   crtc->oScreen = 0;
   crtc->vScreen = sm750_dev->pvMem;
  } else {
   output->paths = sm750_crt;
   crtc->channel = sm750_secondary;

   crtc->oScreen = sm750_dev->vidmem_size >> 1;
   crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
  }
  break;
 case 130:
  if (par->index == 0) {
   output->paths = sm750_panel;
   crtc->channel = sm750_secondary;
   crtc->oScreen = 0;
   crtc->vScreen = sm750_dev->pvMem;
  } else {
   output->paths = sm750_crt;
   crtc->channel = sm750_primary;

   crtc->oScreen = sm750_dev->vidmem_size >> 1;
   crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
  }
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
