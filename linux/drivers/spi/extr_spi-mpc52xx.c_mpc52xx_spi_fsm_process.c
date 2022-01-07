
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mpc52xx_spi {int (* state ) (int,struct mpc52xx_spi*,int ,int ) ;int work; scalar_t__ regs; } ;


 int FSM_CONTINUE ;
 int FSM_POLL ;
 scalar_t__ SPI_DATA ;
 scalar_t__ SPI_STATUS ;
 int in_8 (scalar_t__) ;
 int schedule_work (int *) ;
 int stub1 (int,struct mpc52xx_spi*,int ,int ) ;

__attribute__((used)) static void mpc52xx_spi_fsm_process(int irq, struct mpc52xx_spi *ms)
{
 int rc = FSM_CONTINUE;
 u8 status, data;

 while (rc == FSM_CONTINUE) {


  status = in_8(ms->regs + SPI_STATUS);
  data = in_8(ms->regs + SPI_DATA);
  rc = ms->state(irq, ms, status, data);
 }

 if (rc == FSM_POLL)
  schedule_work(&ms->work);
}
