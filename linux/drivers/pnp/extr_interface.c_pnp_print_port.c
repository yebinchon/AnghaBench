
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_port {int flags; scalar_t__ size; scalar_t__ align; scalar_t__ max; scalar_t__ min; } ;
typedef int pnp_info_buffer_t ;


 int IORESOURCE_IO_16BIT_ADDR ;
 int pnp_printf (int *,char*,char*,unsigned long long,unsigned long long,unsigned long long,unsigned long long,int) ;

__attribute__((used)) static void pnp_print_port(pnp_info_buffer_t * buffer, char *space,
      struct pnp_port *port)
{
 pnp_printf(buffer, "%sport %#llx-%#llx, align %#llx, size %#llx, "
     "%i-bit address decoding\n", space,
     (unsigned long long) port->min,
     (unsigned long long) port->max,
     port->align ? ((unsigned long long) port->align - 1) : 0,
     (unsigned long long) port->size,
     port->flags & IORESOURCE_IO_16BIT_ADDR ? 16 : 10);
}
