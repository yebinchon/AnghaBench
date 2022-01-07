
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_adi {scalar_t__ slave_pbase; } ;


 int HWRST_STATUS_WATCHDOG ;
 scalar_t__ PMIC_RST_STATUS ;
 int sprd_adi_read (struct sprd_adi*,scalar_t__,int *) ;
 int sprd_adi_write (struct sprd_adi*,scalar_t__,int ) ;

__attribute__((used)) static void sprd_adi_set_wdt_rst_mode(struct sprd_adi *sadi)
{
}
