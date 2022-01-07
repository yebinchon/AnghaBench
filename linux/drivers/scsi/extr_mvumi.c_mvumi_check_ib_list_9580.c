
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_hba {int max_io; int ib_shadow; int fw_outstanding; } ;


 int atomic_read (int *) ;
 unsigned int ioread32 (int ) ;

__attribute__((used)) static unsigned int mvumi_check_ib_list_9580(struct mvumi_hba *mhba)
{
 unsigned int count;
 if (atomic_read(&mhba->fw_outstanding) >= (mhba->max_io - 1))
  return 0;
 count = ioread32(mhba->ib_shadow);
 if (count == 0xffff)
  return 0;
 return count;
}
