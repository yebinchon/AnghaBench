
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int (* lpfc_sli_hbq_to_firmware ) (struct lpfc_hba*,int ,struct hbq_dmabuf*) ;int hbalock; } ;
struct hbq_dmabuf {int dummy; } ;


 int lockdep_assert_held (int *) ;
 int stub1 (struct lpfc_hba*,int ,struct hbq_dmabuf*) ;

__attribute__((used)) static int
lpfc_sli_hbq_to_firmware(struct lpfc_hba *phba, uint32_t hbqno,
    struct hbq_dmabuf *hbq_buf)
{
 lockdep_assert_held(&phba->hbalock);
 return phba->lpfc_sli_hbq_to_firmware(phba, hbqno, hbq_buf);
}
