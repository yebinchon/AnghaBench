
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {size_t nr; } ;
struct TYPE_2__ {int keep_vs; int dev; } ;


 int NO_KEEP_VS ;
 TYPE_1__* SCOOP_DEV ;
 int SCOOP_IMR ;
 int SCOOP_MCR ;
 int sharpsl_pcmcia_init_reset (struct soc_pcmcia_socket*) ;
 int write_scoop_reg (int ,int ,int) ;

__attribute__((used)) static void sharpsl_pcmcia_socket_init(struct soc_pcmcia_socket *skt)
{
 sharpsl_pcmcia_init_reset(skt);


 write_scoop_reg(SCOOP_DEV[skt->nr].dev, SCOOP_IMR, 0x00C0);
 write_scoop_reg(SCOOP_DEV[skt->nr].dev, SCOOP_MCR, 0x0101);
 SCOOP_DEV[skt->nr].keep_vs = NO_KEEP_VS;
}
