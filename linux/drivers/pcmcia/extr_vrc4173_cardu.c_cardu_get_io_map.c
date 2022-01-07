
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vrc4173_socket_t ;
typedef int uint8_t ;
typedef int u_char ;
struct pccard_io_map {int map; int flags; void* stop; void* start; } ;


 int ADR_WIN_EN ;
 int EINVAL ;
 int IO_WIN_CNT ;
 int IO_WIN_DATA_16BIT (int) ;
 int IO_WIN_DATA_AUTOSZ (int) ;
 int IO_WIN_EA (int) ;
 int IO_WIN_EN (int) ;
 int IO_WIN_SA (int) ;
 int MAP_16BIT ;
 int MAP_ACTIVE ;
 int MAP_AUTOSZ ;
 int * cardu_sockets ;
 int exca_readb (int *,int ) ;
 void* exca_readw (int *,int ) ;

__attribute__((used)) static int cardu_get_io_map(unsigned int sock, struct pccard_io_map *io)
{
 vrc4173_socket_t *socket = &cardu_sockets[sock];
 uint8_t ioctl, window;
 u_char map;

 map = io->map;
 if (map > 1)
  return -EINVAL;

 io->start = exca_readw(socket, IO_WIN_SA(map));
 io->stop = exca_readw(socket, IO_WIN_EA(map));

 ioctl = exca_readb(socket, IO_WIN_CNT);
 window = exca_readb(socket, ADR_WIN_EN);
 io->flags = (window & IO_WIN_EN(map)) ? MAP_ACTIVE : 0;
 if (ioctl & IO_WIN_DATA_AUTOSZ(map))
  io->flags |= MAP_AUTOSZ;
 else if (ioctl & IO_WIN_DATA_16BIT(map))
  io->flags |= MAP_16BIT;

 return 0;
}
