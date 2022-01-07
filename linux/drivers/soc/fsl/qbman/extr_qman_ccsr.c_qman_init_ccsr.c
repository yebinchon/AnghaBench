
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int QM_EIRQ_PEBI ;
 int REG_ERR_ISR ;
 int fqd_a ;
 int fqd_sz ;
 int pfdr_a ;
 int pfdr_sz ;
 int qm_ccsr_out (int ,int ) ;
 int qm_dc_portal_fman0 ;
 int qm_dc_portal_fman1 ;
 int qm_init_pfdr (struct device*,int,int) ;
 int qm_memory_fqd ;
 int qm_memory_pfdr ;
 int qm_set_corenet_initiator () ;
 int qm_set_dc (int ,int,int ) ;
 int qm_set_hid () ;
 int qm_set_memory (int ,int ,int) ;
 int qm_set_pfdr_threshold (int,int) ;
 int qm_set_sfdr_threshold (int) ;
 int qm_set_wq_scheduling (int,int ,int ,int ,int ,int ,int ,int ) ;
 int qm_wq_first ;
 int qm_wq_last ;

__attribute__((used)) static int qman_init_ccsr(struct device *dev)
{
 int i, err;


 err = qm_set_memory(qm_memory_fqd, fqd_a, fqd_sz);
 if (err < 0)
  return err;

 err = qm_set_memory(qm_memory_pfdr, pfdr_a, pfdr_sz);
 if (err < 0)
  return err;

 if (err == 0) {
  err = qm_init_pfdr(dev, 8, pfdr_sz / 64 - 8);
  if (err)
   return err;
 }

 qm_set_pfdr_threshold(512, 64);
 qm_set_sfdr_threshold(128);

 qm_ccsr_out(REG_ERR_ISR, QM_EIRQ_PEBI);

 qm_set_corenet_initiator();

 qm_set_hid();

 for (i = qm_wq_first; i <= qm_wq_last; i++)
  qm_set_wq_scheduling(i, 0, 0, 0, 0, 0, 0, 0);

 qm_set_dc(qm_dc_portal_fman0, 1, 0);
 qm_set_dc(qm_dc_portal_fman1, 1, 0);
 return 0;
}
