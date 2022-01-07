
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kthread_destroy_worker (void*) ;

__attribute__((used)) static void cros_ec_spi_high_pri_release(void *worker)
{
 kthread_destroy_worker(worker);
}
