
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ bar; } ;
struct TYPE_4__ {TYPE_1__ flash; } ;
struct asd_ha_struct {TYPE_2__ hw_prof; } ;


 int asd_read_reg_string (struct asd_ha_struct*,void*,scalar_t__,int) ;

__attribute__((used)) static int asd_read_flash_seg(struct asd_ha_struct *asd_ha,
         void *buffer, u32 offs, int size)
{
 asd_read_reg_string(asd_ha, buffer, asd_ha->hw_prof.flash.bar+offs,
       size);
 return 0;
}
