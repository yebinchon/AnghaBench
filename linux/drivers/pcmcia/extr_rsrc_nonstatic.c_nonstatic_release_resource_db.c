
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map {struct resource_map* next; } ;
struct socket_data {struct resource_map io_db; struct resource_map mem_db; struct resource_map mem_db_valid; } ;
struct pcmcia_socket {struct socket_data* resource_data; } ;


 int kfree (struct resource_map*) ;

__attribute__((used)) static void nonstatic_release_resource_db(struct pcmcia_socket *s)
{
 struct socket_data *data = s->resource_data;
 struct resource_map *p, *q;

 for (p = data->mem_db_valid.next; p != &data->mem_db_valid; p = q) {
  q = p->next;
  kfree(p);
 }
 for (p = data->mem_db.next; p != &data->mem_db; p = q) {
  q = p->next;
  kfree(p);
 }
 for (p = data->io_db.next; p != &data->io_db; p = q) {
  q = p->next;
  kfree(p);
 }
}
