
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct musb_hw_ep {int dummy; } ;
struct musb_fifo_cfg {int hw_ep_num; } ;
struct musb {int bulk_ep; TYPE_1__* config; int nr_endpoints; struct musb_hw_ep* endpoints; } ;
struct TYPE_2__ {unsigned int fifo_cfg_size; int num_eps; int ram_bits; struct musb_fifo_cfg* fifo_cfg; } ;


 unsigned int ARRAY_SIZE (struct musb_fifo_cfg*) ;
 int EINVAL ;
 int ep0_cfg ;
 int fifo_mode ;
 int fifo_setup (struct musb*,struct musb_hw_ep*,int *,int) ;
 int max (int,int ) ;
 struct musb_fifo_cfg* mode_0_cfg ;
 struct musb_fifo_cfg* mode_1_cfg ;
 struct musb_fifo_cfg* mode_2_cfg ;
 struct musb_fifo_cfg* mode_3_cfg ;
 struct musb_fifo_cfg* mode_4_cfg ;
 struct musb_fifo_cfg* mode_5_cfg ;
 int musb_driver_name ;
 int pr_debug (char*,int ,...) ;

__attribute__((used)) static int ep_config_from_table(struct musb *musb)
{
 const struct musb_fifo_cfg *cfg;
 unsigned i, n;
 int offset;
 struct musb_hw_ep *hw_ep = musb->endpoints;

 if (musb->config->fifo_cfg) {
  cfg = musb->config->fifo_cfg;
  n = musb->config->fifo_cfg_size;
  goto done;
 }

 switch (fifo_mode) {
 default:
  fifo_mode = 0;

 case 0:
  cfg = mode_0_cfg;
  n = ARRAY_SIZE(mode_0_cfg);
  break;
 case 1:
  cfg = mode_1_cfg;
  n = ARRAY_SIZE(mode_1_cfg);
  break;
 case 2:
  cfg = mode_2_cfg;
  n = ARRAY_SIZE(mode_2_cfg);
  break;
 case 3:
  cfg = mode_3_cfg;
  n = ARRAY_SIZE(mode_3_cfg);
  break;
 case 4:
  cfg = mode_4_cfg;
  n = ARRAY_SIZE(mode_4_cfg);
  break;
 case 5:
  cfg = mode_5_cfg;
  n = ARRAY_SIZE(mode_5_cfg);
  break;
 }

 pr_debug("%s: setup fifo_mode %d\n", musb_driver_name, fifo_mode);


done:
 offset = fifo_setup(musb, hw_ep, &ep0_cfg, 0);






 for (i = 0; i < n; i++) {
  u8 epn = cfg->hw_ep_num;

  if (epn >= musb->config->num_eps) {
   pr_debug("%s: invalid ep %d\n",
     musb_driver_name, epn);
   return -EINVAL;
  }
  offset = fifo_setup(musb, hw_ep + epn, cfg++, offset);
  if (offset < 0) {
   pr_debug("%s: mem overrun, ep %d\n",
     musb_driver_name, epn);
   return offset;
  }
  epn++;
  musb->nr_endpoints = max(epn, musb->nr_endpoints);
 }

 pr_debug("%s: %d/%d max ep, %d/%d memory\n",
   musb_driver_name,
   n + 1, musb->config->num_eps * 2 - 1,
   offset, (1 << (musb->config->ram_bits + 2)));

 if (!musb->bulk_ep) {
  pr_debug("%s: missing bulk\n", musb_driver_name);
  return -EINVAL;
 }

 return 0;
}
