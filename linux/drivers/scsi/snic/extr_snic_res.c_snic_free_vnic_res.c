
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {unsigned int wq_count; unsigned int cq_count; unsigned int intr_count; int * intr; int * cq; int * wq; } ;


 int svnic_cq_free (int *) ;
 int svnic_intr_free (int *) ;
 int svnic_wq_free (int *) ;

void
snic_free_vnic_res(struct snic *snic)
{
 unsigned int i;

 for (i = 0; i < snic->wq_count; i++)
  svnic_wq_free(&snic->wq[i]);

 for (i = 0; i < snic->cq_count; i++)
  svnic_cq_free(&snic->cq[i]);

 for (i = 0; i < snic->intr_count; i++)
  svnic_intr_free(&snic->intr[i]);
}
