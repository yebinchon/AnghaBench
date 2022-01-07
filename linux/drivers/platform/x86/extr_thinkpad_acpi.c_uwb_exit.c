
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TPACPI_RFK_UWB_SW_ID ;
 int tpacpi_destroy_rfkill (int ) ;

__attribute__((used)) static void uwb_exit(void)
{
 tpacpi_destroy_rfkill(TPACPI_RFK_UWB_SW_ID);
}
