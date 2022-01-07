
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dma {int map; int flags; } ;
typedef int pnp_info_buffer_t ;




 int IORESOURCE_DMA_BYTE ;
 int IORESOURCE_DMA_MASTER ;
 int IORESOURCE_DMA_SPEED_MASK ;



 int IORESOURCE_DMA_TYPE_MASK ;
 int IORESOURCE_DMA_WORD ;
 int pnp_printf (int *,char*,...) ;

__attribute__((used)) static void pnp_print_dma(pnp_info_buffer_t * buffer, char *space,
     struct pnp_dma *dma)
{
 int first = 1, i;
 char *s;

 pnp_printf(buffer, "%sdma ", space);
 for (i = 0; i < 8; i++)
  if (dma->map & (1 << i)) {
   if (!first) {
    pnp_printf(buffer, ",");
   } else {
    first = 0;
   }
   pnp_printf(buffer, "%i", i);
  }
 if (!dma->map)
  pnp_printf(buffer, "<none>");
 switch (dma->flags & IORESOURCE_DMA_TYPE_MASK) {
 case 131:
  s = "8-bit";
  break;
 case 132:
  s = "8-bit&16-bit";
  break;
 default:
  s = "16-bit";
 }
 pnp_printf(buffer, " %s", s);
 if (dma->flags & IORESOURCE_DMA_MASTER)
  pnp_printf(buffer, " master");
 if (dma->flags & IORESOURCE_DMA_BYTE)
  pnp_printf(buffer, " byte-count");
 if (dma->flags & IORESOURCE_DMA_WORD)
  pnp_printf(buffer, " word-count");
 switch (dma->flags & IORESOURCE_DMA_SPEED_MASK) {
 case 130:
  s = "type-A";
  break;
 case 129:
  s = "type-B";
  break;
 case 128:
  s = "type-F";
  break;
 default:
  s = "compatible";
  break;
 }
 pnp_printf(buffer, " %s\n", s);
}
