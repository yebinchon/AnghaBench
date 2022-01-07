
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_spi_data {int transfer_complete; int wait; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void pch_dma_rx_complete(void *arg)
{
 struct pch_spi_data *data = arg;


 data->transfer_complete = 1;
 wake_up_interruptible(&data->wait);
}
