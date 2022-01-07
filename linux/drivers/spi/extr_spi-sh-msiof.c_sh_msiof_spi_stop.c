
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_msiof_spi_priv {int ctlr; } ;


 int CTR_RXE ;
 int CTR_TFSE ;
 int CTR_TSCKE ;
 int CTR_TXE ;
 int sh_msiof_modify_ctr_wait (struct sh_msiof_spi_priv*,int ,int ) ;
 int spi_controller_is_slave (int ) ;

__attribute__((used)) static int sh_msiof_spi_stop(struct sh_msiof_spi_priv *p, void *rx_buf)
{
 bool slave = spi_controller_is_slave(p->ctlr);
 int ret = 0;


 if (!slave)
  ret = sh_msiof_modify_ctr_wait(p, CTR_TFSE, 0);
 if (!ret)
  ret = sh_msiof_modify_ctr_wait(p, CTR_TXE, 0);
 if (rx_buf && !ret)
  ret = sh_msiof_modify_ctr_wait(p, CTR_RXE, 0);
 if (!ret && !slave)
  ret = sh_msiof_modify_ctr_wait(p, CTR_TSCKE, 0);

 return ret;
}
