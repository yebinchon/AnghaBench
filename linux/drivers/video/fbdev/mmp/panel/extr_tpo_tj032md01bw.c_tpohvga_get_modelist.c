
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_panel {int dummy; } ;
struct mmp_mode {int dummy; } ;


 struct mmp_mode* mmp_modes_tpohvga ;

__attribute__((used)) static int tpohvga_get_modelist(struct mmp_panel *panel,
  struct mmp_mode **modelist)
{
 *modelist = mmp_modes_tpohvga;
 return 1;
}
