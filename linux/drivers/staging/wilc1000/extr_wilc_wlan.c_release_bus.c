
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc {int hif_cs; } ;
typedef enum bus_release { ____Placeholder_bus_release } bus_release ;


 int WILC_BUS_RELEASE_ALLOW_SLEEP ;
 int chip_allow_sleep (struct wilc*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void release_bus(struct wilc *wilc, enum bus_release release)
{
 if (release == WILC_BUS_RELEASE_ALLOW_SLEEP)
  chip_allow_sleep(wilc);
 mutex_unlock(&wilc->hif_cs);
}
