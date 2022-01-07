
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int is_irq_enabled; int irq; } ;


 int free_irq (int ,struct ufs_hba*) ;

__attribute__((used)) static inline void ufshcd_disable_irq(struct ufs_hba *hba)
{
 if (hba->is_irq_enabled) {
  free_irq(hba->irq, hba);
  hba->is_irq_enabled = 0;
 }
}
