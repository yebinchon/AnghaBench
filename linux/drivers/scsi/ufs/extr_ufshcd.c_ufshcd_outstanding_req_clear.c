
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int outstanding_reqs; } ;


 int __clear_bit (int,int *) ;

__attribute__((used)) static inline void ufshcd_outstanding_req_clear(struct ufs_hba *hba, int tag)
{
 __clear_bit(tag, &hba->outstanding_reqs);
}
