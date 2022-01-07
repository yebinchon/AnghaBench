
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_qup {scalar_t__ base; int dev; } ;


 int EIO ;
 scalar_t__ QUP_STATE ;
 int QUP_STATE_CLEAR ;
 int QUP_STATE_MASK ;
 int QUP_STATE_PAUSE ;
 int QUP_STATE_RESET ;
 unsigned long SPI_DELAY_RETRY ;
 int SPI_DELAY_THRESHOLD ;
 int dev_dbg (int ,char*,unsigned long,int) ;
 int readl_relaxed (scalar_t__) ;
 int spi_qup_is_valid_state (struct spi_qup*) ;
 int usleep_range (int,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int spi_qup_set_state(struct spi_qup *controller, u32 state)
{
 unsigned long loop;
 u32 cur_state;

 loop = 0;
 while (!spi_qup_is_valid_state(controller)) {

  usleep_range(SPI_DELAY_THRESHOLD, SPI_DELAY_THRESHOLD * 2);

  if (++loop > SPI_DELAY_RETRY)
   return -EIO;
 }

 if (loop)
  dev_dbg(controller->dev, "invalid state for %ld,us %d\n",
   loop, state);

 cur_state = readl_relaxed(controller->base + QUP_STATE);




 if (((cur_state & QUP_STATE_MASK) == QUP_STATE_PAUSE) &&
     (state == QUP_STATE_RESET)) {
  writel_relaxed(QUP_STATE_CLEAR, controller->base + QUP_STATE);
  writel_relaxed(QUP_STATE_CLEAR, controller->base + QUP_STATE);
 } else {
  cur_state &= ~QUP_STATE_MASK;
  cur_state |= state;
  writel_relaxed(cur_state, controller->base + QUP_STATE);
 }

 loop = 0;
 while (!spi_qup_is_valid_state(controller)) {

  usleep_range(SPI_DELAY_THRESHOLD, SPI_DELAY_THRESHOLD * 2);

  if (++loop > SPI_DELAY_RETRY)
   return -EIO;
 }

 return 0;
}
