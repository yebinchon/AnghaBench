
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc {int hif_cs; } ;
typedef enum bus_acquire { ____Placeholder_bus_acquire } bus_acquire ;


 int WILC_BUS_ACQUIRE_AND_WAKEUP ;
 int chip_wakeup (struct wilc*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static inline void acquire_bus(struct wilc *wilc, enum bus_acquire acquire)
{
 mutex_lock(&wilc->hif_cs);
 if (acquire == WILC_BUS_ACQUIRE_AND_WAKEUP)
  chip_wakeup(wilc);
}
