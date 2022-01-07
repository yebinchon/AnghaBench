
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int end; int start; } ;
struct pcmcia_socket {int dummy; } ;
struct TYPE_5__ {int map; struct resource* res; } ;
typedef TYPE_1__ pccard_mem_map ;
struct TYPE_6__ {int member_4; int map; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ pccard_io_map ;


 int enter (char*) ;
 int i82092aa_set_io_map (struct pcmcia_socket*,TYPE_2__*) ;
 int i82092aa_set_mem_map (struct pcmcia_socket*,TYPE_1__*) ;
 int leave (char*) ;

__attribute__((used)) static int i82092aa_init(struct pcmcia_socket *sock)
{
 int i;
 struct resource res = { .start = 0, .end = 0x0fff };
        pccard_io_map io = { 0, 0, 0, 0, 1 };
 pccard_mem_map mem = { .res = &res, };

        enter("i82092aa_init");

        for (i = 0; i < 2; i++) {
         io.map = i;
                i82092aa_set_io_map(sock, &io);
 }
        for (i = 0; i < 5; i++) {
         mem.map = i;
                i82092aa_set_mem_map(sock, &mem);
 }

 leave("i82092aa_init");
 return 0;
}
