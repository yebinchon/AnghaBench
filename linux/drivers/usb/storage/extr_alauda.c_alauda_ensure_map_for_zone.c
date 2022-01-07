
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {int dummy; } ;
struct TYPE_2__ {int ** pba_to_lba; int ** lba_to_pba; } ;


 TYPE_1__ MEDIA_INFO (struct us_data*) ;
 int alauda_read_map (struct us_data*,unsigned int) ;

__attribute__((used)) static void alauda_ensure_map_for_zone(struct us_data *us, unsigned int zone)
{
 if (MEDIA_INFO(us).lba_to_pba[zone] == ((void*)0)
  || MEDIA_INFO(us).pba_to_lba[zone] == ((void*)0))
  alauda_read_map(us, zone);
}
