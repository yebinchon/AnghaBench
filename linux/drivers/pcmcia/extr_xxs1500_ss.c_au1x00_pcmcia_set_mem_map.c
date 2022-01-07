
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xxs1500_pcmcia_sock {scalar_t__ phys_mem; scalar_t__ phys_attr; } ;
struct pcmcia_socket {int dummy; } ;
struct pccard_mem_map {int flags; scalar_t__ card_start; scalar_t__ static_start; } ;


 int MAP_ATTRIB ;
 struct xxs1500_pcmcia_sock* to_xxs_socket (struct pcmcia_socket*) ;

__attribute__((used)) static int au1x00_pcmcia_set_mem_map(struct pcmcia_socket *skt,
         struct pccard_mem_map *map)
{
 struct xxs1500_pcmcia_sock *sock = to_xxs_socket(skt);

 if (map->flags & MAP_ATTRIB)
  map->static_start = sock->phys_attr + map->card_start;
 else
  map->static_start = sock->phys_mem + map->card_start;

 return 0;
}
