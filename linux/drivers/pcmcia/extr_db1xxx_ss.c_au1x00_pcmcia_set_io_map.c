
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pcmcia_socket {int dummy; } ;
struct pccard_io_map {scalar_t__ start; scalar_t__ stop; } ;
struct db1x_pcmcia_sock {scalar_t__ virt_io; } ;


 scalar_t__ IO_MAP_SIZE ;
 struct db1x_pcmcia_sock* to_db1x_socket (struct pcmcia_socket*) ;

__attribute__((used)) static int au1x00_pcmcia_set_io_map(struct pcmcia_socket *skt,
        struct pccard_io_map *map)
{
 struct db1x_pcmcia_sock *sock = to_db1x_socket(skt);

 map->start = (u32)sock->virt_io;
 map->stop = map->start + IO_MAP_SIZE;

 return 0;
}
