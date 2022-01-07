
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct asd_ha_struct {int iolock; } ;


 int __asd_read_reg_byte (struct asd_ha_struct*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void asd_read_reg_string(struct asd_ha_struct *asd_ha, void *dst,
    u32 offs, int count)
{
 u8 *p = dst;
 unsigned long flags;

 spin_lock_irqsave(&asd_ha->iolock, flags);
 for ( ; count > 0; count--, offs++, p++)
  *p = __asd_read_reg_byte(asd_ha, offs);
 spin_unlock_irqrestore(&asd_ha->iolock, flags);
}
