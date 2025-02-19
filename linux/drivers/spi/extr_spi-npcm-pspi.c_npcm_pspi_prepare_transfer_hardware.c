
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct npcm_pspi {int dummy; } ;


 int NPCM_PSPI_CTL1_EIR ;
 int NPCM_PSPI_CTL1_EIW ;
 int npcm_pspi_irq_enable (struct npcm_pspi*,int) ;
 struct npcm_pspi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int npcm_pspi_prepare_transfer_hardware(struct spi_master *master)
{
 struct npcm_pspi *priv = spi_master_get_devdata(master);

 npcm_pspi_irq_enable(priv, NPCM_PSPI_CTL1_EIR | NPCM_PSPI_CTL1_EIW);

 return 0;
}
