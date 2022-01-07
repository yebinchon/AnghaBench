
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct pic32_sqi {scalar_t__ regs; } ;


 scalar_t__ PESQI_CLK_CTRL_REG ;
 int PESQI_CLK_EN ;
 scalar_t__ PESQI_CONF_REG ;
 int PESQI_EN ;
 int pic32_setbits (scalar_t__,int ) ;
 struct pic32_sqi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int pic32_sqi_prepare_hardware(struct spi_master *master)
{
 struct pic32_sqi *sqi = spi_master_get_devdata(master);


 pic32_setbits(sqi->regs + PESQI_CONF_REG, PESQI_EN);

 pic32_setbits(sqi->regs + PESQI_CLK_CTRL_REG, PESQI_CLK_EN);

 return 0;
}
