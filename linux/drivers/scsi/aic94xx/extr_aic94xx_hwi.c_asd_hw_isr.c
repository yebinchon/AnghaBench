
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asd_ha_struct {int dummy; } ;
typedef int irqreturn_t ;


 int CHIMINT ;
 int COMINT ;
 int DEVINT ;
 int DLAVAIL ;
 int HOSTERR ;
 int INITERR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int asd_com_sas_isr (struct asd_ha_struct*) ;
 int asd_dch_sas_isr (struct asd_ha_struct*) ;
 int asd_hst_pcix_isr (struct asd_ha_struct*) ;
 int asd_process_donelist_isr (struct asd_ha_struct*) ;
 int asd_rbi_exsi_isr (struct asd_ha_struct*) ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;

irqreturn_t asd_hw_isr(int irq, void *dev_id)
{
 struct asd_ha_struct *asd_ha = dev_id;
 u32 chimint = asd_read_reg_dword(asd_ha, CHIMINT);

 if (!chimint)
  return IRQ_NONE;

 asd_write_reg_dword(asd_ha, CHIMINT, chimint);
 (void) asd_read_reg_dword(asd_ha, CHIMINT);

 if (chimint & DLAVAIL)
  asd_process_donelist_isr(asd_ha);
 if (chimint & COMINT)
  asd_com_sas_isr(asd_ha);
 if (chimint & DEVINT)
  asd_dch_sas_isr(asd_ha);
 if (chimint & INITERR)
  asd_rbi_exsi_isr(asd_ha);
 if (chimint & HOSTERR)
  asd_hst_pcix_isr(asd_ha);

 return IRQ_HANDLED;
}
