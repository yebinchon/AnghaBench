
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rspi_data {int dma_callbacked; int wait; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void rspi_dma_complete(void *arg)
{
 struct rspi_data *rspi = arg;

 rspi->dma_callbacked = 1;
 wake_up_interruptible(&rspi->wait);
}
