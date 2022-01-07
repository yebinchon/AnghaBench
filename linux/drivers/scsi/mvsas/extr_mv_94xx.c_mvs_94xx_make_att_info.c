
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sas_identify_frame {int dummy; } ;


 int mvs_94xx_make_dev_info (struct sas_identify_frame*) ;

__attribute__((used)) static u32 mvs_94xx_make_att_info(struct sas_identify_frame *id)
{
 return mvs_94xx_make_dev_info(id);
}
