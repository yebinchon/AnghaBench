
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_mobile_lcdc_panel_cfg {int (* start_transfer ) (struct sh_mobile_lcdc_chan*,int *) ;} ;
struct sh_mobile_lcdc_chan {int sglist; TYPE_2__* lcdc; TYPE_1__* cfg; } ;
struct list_head {int dummy; } ;
struct fb_info {struct sh_mobile_lcdc_chan* par; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct sh_mobile_lcdc_panel_cfg panel_cfg; } ;


 int DMA_TO_DEVICE ;
 int LDSM2R ;
 int LDSM2R_OSTRG ;
 int dma_map_sg (int ,int ,unsigned int,int ) ;
 int dma_unmap_sg (int ,int ,unsigned int,int ) ;
 int lcdc_write_chan (struct sh_mobile_lcdc_chan*,int ,int ) ;
 int list_empty (struct list_head*) ;
 int sh_mobile_lcdc_clk_on (TYPE_2__*) ;
 unsigned int sh_mobile_lcdc_sginit (struct fb_info*,struct list_head*) ;
 int sh_mobile_lcdc_sys_bus_ops ;
 int stub1 (struct sh_mobile_lcdc_chan*,int *) ;
 int stub2 (struct sh_mobile_lcdc_chan*,int *) ;

__attribute__((used)) static void sh_mobile_lcdc_deferred_io(struct fb_info *info,
           struct list_head *pagelist)
{
 struct sh_mobile_lcdc_chan *ch = info->par;
 const struct sh_mobile_lcdc_panel_cfg *panel = &ch->cfg->panel_cfg;


 sh_mobile_lcdc_clk_on(ch->lcdc);
 if (!list_empty(pagelist)) {
  unsigned int nr_pages = sh_mobile_lcdc_sginit(info, pagelist);


  dma_map_sg(ch->lcdc->dev, ch->sglist, nr_pages, DMA_TO_DEVICE);
  if (panel->start_transfer)
   panel->start_transfer(ch, &sh_mobile_lcdc_sys_bus_ops);
  lcdc_write_chan(ch, LDSM2R, LDSM2R_OSTRG);
  dma_unmap_sg(ch->lcdc->dev, ch->sglist, nr_pages,
        DMA_TO_DEVICE);
 } else {
  if (panel->start_transfer)
   panel->start_transfer(ch, &sh_mobile_lcdc_sys_bus_ops);
  lcdc_write_chan(ch, LDSM2R, LDSM2R_OSTRG);
 }
}
