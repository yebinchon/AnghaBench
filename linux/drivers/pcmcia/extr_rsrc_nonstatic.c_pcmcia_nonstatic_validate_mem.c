
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* next; } ;
struct socket_data {TYPE_1__ mem_db_valid; } ;
struct pcmcia_socket {int state; int features; struct socket_data* resource_data; } ;


 unsigned int MEM_PROBE_HIGH ;
 unsigned int MEM_PROBE_LOW ;
 int SOCKET_PRESENT ;
 int SS_CAP_PAGE_REGS ;
 int probe_mem ;
 int validate_mem (struct pcmcia_socket*,unsigned int) ;

__attribute__((used)) static int pcmcia_nonstatic_validate_mem(struct pcmcia_socket *s)
{
 struct socket_data *s_data = s->resource_data;
 unsigned int probe_mask = MEM_PROBE_LOW;
 int ret;

 if (!probe_mem || !(s->state & SOCKET_PRESENT))
  return 0;

 if (s->features & SS_CAP_PAGE_REGS)
  probe_mask = MEM_PROBE_HIGH;

 ret = validate_mem(s, probe_mask);

 if (s_data->mem_db_valid.next != &s_data->mem_db_valid)
  return 0;

 return ret;
}
