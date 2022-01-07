
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int ioport; } ;
struct ahc_softc {TYPE_1__ bsh; int tag; } ;


 int AHC_EISA_IOSIZE ;
 int BUS_SPACE_PIO ;
 int ENOMEM ;
 int request_region (int ,int ,char*) ;

int
aic7770_map_registers(struct ahc_softc *ahc, u_int port)
{



 if (!request_region(port, AHC_EISA_IOSIZE, "aic7xxx"))
  return (ENOMEM);
 ahc->tag = BUS_SPACE_PIO;
 ahc->bsh.ioport = port;
 return (0);
}
