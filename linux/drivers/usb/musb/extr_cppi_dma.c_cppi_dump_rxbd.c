
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cppi_descriptor {int hw_options; int hw_off_len; int hw_bufp; int hw_next; int dma; } ;


 int pr_debug (char*,char const*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void cppi_dump_rxbd(const char *tag, struct cppi_descriptor *bd)
{
 pr_debug("RXBD/%s %08x: "
   "nxt %08x buf %08x off.blen %08x opt.plen %08x\n",
   tag, bd->dma,
   bd->hw_next, bd->hw_bufp, bd->hw_off_len,
   bd->hw_options);
}
