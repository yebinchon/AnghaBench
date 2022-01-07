
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int num_hrrq; int* host_toggle_bit; scalar_t__* hrrq_start; scalar_t__* hrrq_end; scalar_t__* hrrq_curr; } ;


 int HRRQ_ENTRY_SIZE ;
 int PMCRAID_MAX_CMD ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static void pmcraid_reinit_buffers(struct pmcraid_instance *pinstance)
{
 int i;
 int buffer_size = HRRQ_ENTRY_SIZE * PMCRAID_MAX_CMD;

 for (i = 0; i < pinstance->num_hrrq; i++) {
  memset(pinstance->hrrq_start[i], 0, buffer_size);
  pinstance->hrrq_curr[i] = pinstance->hrrq_start[i];
  pinstance->hrrq_end[i] =
   pinstance->hrrq_start[i] + PMCRAID_MAX_CMD - 1;
  pinstance->host_toggle_bit[i] = 1;
 }
}
