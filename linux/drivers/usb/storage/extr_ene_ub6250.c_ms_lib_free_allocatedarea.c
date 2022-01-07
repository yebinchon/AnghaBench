
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {scalar_t__ NumberOfLogBlock; scalar_t__ NumberOfPhyBlock; scalar_t__ PagesPerBlock; scalar_t__ blockSize; scalar_t__ cardType; scalar_t__ SectorsPerCylinder; scalar_t__ BytesPerSector; scalar_t__ flags; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;


 int ms_lib_free_logicalmap (struct us_data*) ;
 int ms_lib_free_writebuf (struct us_data*) ;

__attribute__((used)) static void ms_lib_free_allocatedarea(struct us_data *us)
{
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 ms_lib_free_writebuf(us);
 ms_lib_free_logicalmap(us);


 info->MS_Lib.flags = 0;
 info->MS_Lib.BytesPerSector = 0;
 info->MS_Lib.SectorsPerCylinder = 0;

 info->MS_Lib.cardType = 0;
 info->MS_Lib.blockSize = 0;
 info->MS_Lib.PagesPerBlock = 0;

 info->MS_Lib.NumberOfPhyBlock = 0;
 info->MS_Lib.NumberOfLogBlock = 0;
}
