
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_sli_ring {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int dummy; } ;
struct hbq_dmabuf {struct lpfc_dmabuf dbuf; } ;


 int QUE_BUFTAG_BIT ;
 struct hbq_dmabuf* lpfc_sli_hbqbuf_find (struct lpfc_hba*,int) ;
 struct lpfc_dmabuf* lpfc_sli_ring_taggedbuf_get (struct lpfc_hba*,struct lpfc_sli_ring*,int) ;

__attribute__((used)) static struct lpfc_dmabuf *
lpfc_sli_get_buff(struct lpfc_hba *phba,
    struct lpfc_sli_ring *pring,
    uint32_t tag)
{
 struct hbq_dmabuf *hbq_entry;

 if (tag & QUE_BUFTAG_BIT)
  return lpfc_sli_ring_taggedbuf_get(phba, pring, tag);
 hbq_entry = lpfc_sli_hbqbuf_find(phba, tag);
 if (!hbq_entry)
  return ((void*)0);
 return &hbq_entry->dbuf;
}
