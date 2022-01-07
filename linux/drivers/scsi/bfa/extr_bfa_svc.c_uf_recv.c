
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u32 ;
typedef size_t u16 ;
struct fchs_s {int dummy; } ;
struct bfi_uf_frm_rcvd_s {size_t buf_tag; int frm_len; int xfr_len; } ;
struct bfa_uf_s {int data_len; int hcb_qe; int * data_ptr; int qe; int pb_len; } ;
struct bfa_uf_mod_s {struct bfa_uf_s* uf_list; } ;
struct bfa_uf_buf_s {int * d; } ;
struct bfa_s {scalar_t__ fcs; int plog; } ;


 int BFA_PL_EID_RX ;
 int BFA_PL_MID_HAL_UF ;
 int BFA_TRUE ;
 struct bfa_uf_mod_s* BFA_UF_MOD (struct bfa_s*) ;
 int WARN_ON (int) ;
 int __bfa_cb_uf_recv (struct bfa_uf_s*,int ) ;
 void* be16_to_cpu (int) ;
 int bfa_cb_queue (struct bfa_s*,int *,int (*) (struct bfa_uf_s*,int ),struct bfa_uf_s*) ;
 scalar_t__ bfa_mem_get_dmabuf_kva (struct bfa_uf_mod_s*,size_t,int ) ;
 int bfa_plog_fchdr (int ,int ,int ,int,struct fchs_s*) ;
 int bfa_plog_fchdr_and_pl (int ,int ,int ,int,struct fchs_s*,int ) ;
 int list_del (int *) ;

__attribute__((used)) static void
uf_recv(struct bfa_s *bfa, struct bfi_uf_frm_rcvd_s *m)
{
 struct bfa_uf_mod_s *ufm = BFA_UF_MOD(bfa);
 u16 uf_tag = m->buf_tag;
 struct bfa_uf_s *uf = &ufm->uf_list[uf_tag];
 struct bfa_uf_buf_s *uf_buf;
 uint8_t *buf;
 struct fchs_s *fchs;

 uf_buf = (struct bfa_uf_buf_s *)
   bfa_mem_get_dmabuf_kva(ufm, uf_tag, uf->pb_len);
 buf = &uf_buf->d[0];

 m->frm_len = be16_to_cpu(m->frm_len);
 m->xfr_len = be16_to_cpu(m->xfr_len);

 fchs = (struct fchs_s *)uf_buf;

 list_del(&uf->qe);

 uf->data_ptr = buf;
 uf->data_len = m->xfr_len;

 WARN_ON(uf->data_len < sizeof(struct fchs_s));

 if (uf->data_len == sizeof(struct fchs_s)) {
  bfa_plog_fchdr(bfa->plog, BFA_PL_MID_HAL_UF, BFA_PL_EID_RX,
          uf->data_len, (struct fchs_s *)buf);
 } else {
  u32 pld_w0 = *((u32 *) (buf + sizeof(struct fchs_s)));
  bfa_plog_fchdr_and_pl(bfa->plog, BFA_PL_MID_HAL_UF,
          BFA_PL_EID_RX, uf->data_len,
          (struct fchs_s *)buf, pld_w0);
 }

 if (bfa->fcs)
  __bfa_cb_uf_recv(uf, BFA_TRUE);
 else
  bfa_cb_queue(bfa, &uf->hcb_qe, __bfa_cb_uf_recv, uf);
}
