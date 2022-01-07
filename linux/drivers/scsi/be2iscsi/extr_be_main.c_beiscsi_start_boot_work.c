
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int retry; unsigned int s_handle; int action; scalar_t__ tag; scalar_t__ boot_kset; } ;
struct beiscsi_hba {int boot_work; TYPE_1__ boot_struct; int state; } ;


 int BEISCSI_BOOT_GET_SHANDLE ;
 int BEISCSI_HBA_BOOT_WORK ;
 int schedule_work (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void beiscsi_start_boot_work(struct beiscsi_hba *phba, unsigned int s_handle)
{
 if (phba->boot_struct.boot_kset)
  return;


 if (test_and_set_bit(BEISCSI_HBA_BOOT_WORK, &phba->state))
  return;

 phba->boot_struct.retry = 3;
 phba->boot_struct.tag = 0;
 phba->boot_struct.s_handle = s_handle;
 phba->boot_struct.action = BEISCSI_BOOT_GET_SHANDLE;
 schedule_work(&phba->boot_work);
}
