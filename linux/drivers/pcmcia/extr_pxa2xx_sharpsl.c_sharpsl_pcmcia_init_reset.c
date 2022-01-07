
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {size_t nr; } ;
struct scoop_pcmcia_dev {scalar_t__ keep_rd; int keep_vs; int dev; } ;
struct TYPE_2__ {int (* power_ctrl ) (int ,int,size_t) ;} ;


 int NO_KEEP_VS ;
 int SCOOP_CPR ;
 struct scoop_pcmcia_dev* SCOOP_DEV ;
 TYPE_1__* platform_scoop_config ;
 int reset_scoop (int ) ;
 int stub1 (int ,int,size_t) ;
 int write_scoop_reg (int ,int ,int) ;

__attribute__((used)) static void sharpsl_pcmcia_init_reset(struct soc_pcmcia_socket *skt)
{
 struct scoop_pcmcia_dev *scoopdev = &SCOOP_DEV[skt->nr];

 reset_scoop(scoopdev->dev);


 if (platform_scoop_config->power_ctrl)
  platform_scoop_config->power_ctrl(scoopdev->dev, 0x0000, skt->nr);
 else
  write_scoop_reg(scoopdev->dev, SCOOP_CPR, 0x0000);

 scoopdev->keep_vs = NO_KEEP_VS;
 scoopdev->keep_rd = 0;
}
