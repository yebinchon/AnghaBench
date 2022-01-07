
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int tuple_t ;
struct pcmcia_device {unsigned int config_flags; int vpp; int io_lines; TYPE_7__** resource; int config_index; int dev; int card_addr; TYPE_3__* socket; } ;
struct TYPE_22__ {scalar_t__ nwin; TYPE_1__* win; } ;
struct TYPE_23__ {int nwin; int flags; TYPE_6__* win; } ;
struct TYPE_19__ {int present; int* param; } ;
struct TYPE_18__ {int present; int* param; } ;
struct TYPE_13__ {int flags; TYPE_8__ mem; TYPE_9__ io; TYPE_5__ vpp1; TYPE_4__ vcc; int index; } ;
struct pcmcia_cfg_mem {int (* conf_check ) (struct pcmcia_device*,int ) ;int priv_data; TYPE_10__ dflt; struct pcmcia_device* p_dev; } ;
typedef TYPE_8__ cistpl_mem_t ;
typedef TYPE_9__ cistpl_io_t ;
typedef TYPE_10__ cistpl_cftable_entry_t ;
struct TYPE_14__ {TYPE_10__ cftable_entry; } ;
typedef TYPE_11__ cisparse_t ;
struct TYPE_21__ {int start; int end; int flags; } ;
struct TYPE_20__ {scalar_t__ len; scalar_t__ base; } ;
struct TYPE_16__ {unsigned int Vcc; } ;
struct TYPE_17__ {TYPE_2__ socket; } ;
struct TYPE_15__ {scalar_t__ host_addr; scalar_t__ len; int card_addr; } ;


 int CISTPL_CFTABLE_AUDIO ;
 int CISTPL_CFTABLE_DEFAULT ;
 int CISTPL_IO_LINES_MASK ;
 int CISTPL_POWER_VNOM ;
 unsigned int CONF_AUTO_AUDIO ;
 unsigned int CONF_AUTO_CHECK_VCC ;
 unsigned int CONF_AUTO_SET_IO ;
 unsigned int CONF_AUTO_SET_IOMEM ;
 unsigned int CONF_AUTO_SET_VPP ;
 unsigned int CONF_ENABLE_SPKR ;
 int ENODEV ;
 int IO_DATA_PATH_WIDTH ;
 int dev_dbg (int *,char*,int ,...) ;
 int pcmcia_io_cfg_data_width (int) ;
 int stub1 (struct pcmcia_device*,int ) ;

__attribute__((used)) static int pcmcia_do_loop_config(tuple_t *tuple, cisparse_t *parse, void *priv)
{
 struct pcmcia_cfg_mem *cfg_mem = priv;
 struct pcmcia_device *p_dev = cfg_mem->p_dev;
 cistpl_cftable_entry_t *cfg = &parse->cftable_entry;
 cistpl_cftable_entry_t *dflt = &cfg_mem->dflt;
 unsigned int flags = p_dev->config_flags;
 unsigned int vcc = p_dev->socket->socket.Vcc;

 dev_dbg(&p_dev->dev, "testing configuration %x, autoconf %x\n",
  cfg->index, flags);


 cfg_mem->p_dev->config_index = cfg->index;
 if (cfg->flags & CISTPL_CFTABLE_DEFAULT)
  cfg_mem->dflt = *cfg;


 if (flags & CONF_AUTO_CHECK_VCC) {
  if (cfg->vcc.present & (1 << CISTPL_POWER_VNOM)) {
   if (vcc != cfg->vcc.param[CISTPL_POWER_VNOM] / 10000)
    return -ENODEV;
  } else if (dflt->vcc.present & (1 << CISTPL_POWER_VNOM)) {
   if (vcc != dflt->vcc.param[CISTPL_POWER_VNOM] / 10000)
    return -ENODEV;
  }
 }


 if (flags & CONF_AUTO_SET_VPP) {
  if (cfg->vpp1.present & (1 << CISTPL_POWER_VNOM))
   p_dev->vpp = cfg->vpp1.param[CISTPL_POWER_VNOM] / 10000;
  else if (dflt->vpp1.present & (1 << CISTPL_POWER_VNOM))
   p_dev->vpp =
    dflt->vpp1.param[CISTPL_POWER_VNOM] / 10000;
 }


 if ((flags & CONF_AUTO_AUDIO) && (cfg->flags & CISTPL_CFTABLE_AUDIO))
  p_dev->config_flags |= CONF_ENABLE_SPKR;



 if (flags & CONF_AUTO_SET_IO) {
  cistpl_io_t *io = (cfg->io.nwin) ? &cfg->io : &dflt->io;
  int i = 0;

  p_dev->resource[0]->start = p_dev->resource[0]->end = 0;
  p_dev->resource[1]->start = p_dev->resource[1]->end = 0;
  if (io->nwin == 0)
   return -ENODEV;

  p_dev->resource[0]->flags &= ~IO_DATA_PATH_WIDTH;
  p_dev->resource[0]->flags |=
     pcmcia_io_cfg_data_width(io->flags);
  if (io->nwin > 1) {



   i = (io->win[1].len > io->win[0].len);
   p_dev->resource[1]->flags = p_dev->resource[0]->flags;
   p_dev->resource[1]->start = io->win[1-i].base;
   p_dev->resource[1]->end = io->win[1-i].len;
  }
  p_dev->resource[0]->start = io->win[i].base;
  p_dev->resource[0]->end = io->win[i].len;
  p_dev->io_lines = io->flags & CISTPL_IO_LINES_MASK;
 }


 if (flags & CONF_AUTO_SET_IOMEM) {

  cistpl_mem_t *mem = (cfg->mem.nwin) ? &cfg->mem : &dflt->mem;

  p_dev->resource[2]->start = p_dev->resource[2]->end = 0;
  if (mem->nwin == 0)
   return -ENODEV;

  p_dev->resource[2]->start = mem->win[0].host_addr;
  p_dev->resource[2]->end = mem->win[0].len;
  if (p_dev->resource[2]->end < 0x1000)
   p_dev->resource[2]->end = 0x1000;
  p_dev->card_addr = mem->win[0].card_addr;
 }

 dev_dbg(&p_dev->dev,
  "checking configuration %x: %pr %pr %pr (%d lines)\n",
  p_dev->config_index, p_dev->resource[0], p_dev->resource[1],
  p_dev->resource[2], p_dev->io_lines);

 return cfg_mem->conf_check(p_dev, cfg_mem->priv_data);
}
