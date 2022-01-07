
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vrc4173_socket_t ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_long ;
typedef int u_char ;
struct pccard_mem_map {int map; int sys_start; int sys_stop; int card_start; int flags; } ;


 int ADR_WIN_EN ;
 int EINVAL ;
 int MAP_16BIT ;
 int MAP_ACTIVE ;
 int MAP_ATTRIB ;
 int MAP_WRPROT ;
 int MEM_WIN_DSIZE ;
 int MEM_WIN_EA (int) ;
 int MEM_WIN_EN (int) ;
 int MEM_WIN_OA (int) ;
 int MEM_WIN_REGSET ;
 int MEM_WIN_SA (int) ;
 int MEM_WIN_SAU (int) ;
 int MEM_WIN_WP ;
 int * cardu_sockets ;
 int exca_readb (int *,int ) ;
 int exca_writeb (int *,int ,int) ;
 int exca_writew (int *,int ,int) ;

__attribute__((used)) static int cardu_set_mem_map(unsigned int sock, struct pccard_mem_map *mem)
{
 vrc4173_socket_t *socket = &cardu_sockets[sock];
 uint16_t value;
 uint8_t window, enable;
 u_long sys_start, sys_stop, card_start;
 u_char map;

 map = mem->map;
 sys_start = mem->sys_start;
 sys_stop = mem->sys_stop;
 card_start = mem->card_start;

 if (map > 4 || sys_start > sys_stop || ((sys_start ^ sys_stop) >> 24) ||
     (card_start >> 26))
  return -EINVAL;

 window = exca_readb(socket, ADR_WIN_EN);
 enable = MEM_WIN_EN(map);
 if (window & enable) {
  window &= ~enable;
  exca_writeb(socket, ADR_WIN_EN, window);
 }

 exca_writeb(socket, MEM_WIN_SAU(map), sys_start >> 24);

 value = (sys_start >> 12) & 0x0fff;
 if (mem->flags & MAP_16BIT) value |= MEM_WIN_DSIZE;
 exca_writew(socket, MEM_WIN_SA(map), value);

 value = (sys_stop >> 12) & 0x0fff;
 exca_writew(socket, MEM_WIN_EA(map), value);

 value = ((card_start - sys_start) >> 12) & 0x3fff;
 if (mem->flags & MAP_WRPROT) value |= MEM_WIN_WP;
 if (mem->flags & MAP_ATTRIB) value |= MEM_WIN_REGSET;
 exca_writew(socket, MEM_WIN_OA(map), value);

 if (mem->flags & MAP_ACTIVE)
  exca_writeb(socket, ADR_WIN_EN, window | enable);

 return 0;
}
