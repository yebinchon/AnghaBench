
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map {int num; int base; struct resource_map* next; } ;
struct socket_data {struct resource_map mem_db; } ;
struct pcmcia_socket {struct socket_data* resource_data; } ;


 int ENODEV ;
 int checksum ;
 scalar_t__ do_mem_probe (struct pcmcia_socket*,int ,int ,int ,int ) ;
 int readable ;

__attribute__((used)) static int validate_mem(struct pcmcia_socket *s, unsigned int probe_mask)
{
 struct resource_map *m, mm;
 struct socket_data *s_data = s->resource_data;
 unsigned long ok = 0;

 for (m = s_data->mem_db.next; m != &s_data->mem_db; m = mm.next) {
  mm = *m;
  ok += do_mem_probe(s, mm.base, mm.num, readable, checksum);
 }
 if (ok > 0)
  return 0;
 return -ENODEV;
}
