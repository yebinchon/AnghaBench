#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct fchs_s {int dummy; } ;
struct bfi_uf_frm_rcvd_s {size_t buf_tag; int frm_len; int xfr_len; } ;
struct bfa_uf_s {int data_len; int /*<<< orphan*/  hcb_qe; int /*<<< orphan*/ * data_ptr; int /*<<< orphan*/  qe; int /*<<< orphan*/  pb_len; } ;
struct bfa_uf_mod_s {struct bfa_uf_s* uf_list; } ;
struct bfa_uf_buf_s {int /*<<< orphan*/ * d; } ;
struct bfa_s {scalar_t__ fcs; int /*<<< orphan*/  plog; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_PL_EID_RX ; 
 int /*<<< orphan*/  BFA_PL_MID_HAL_UF ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 struct bfa_uf_mod_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_uf_s*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_s*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct bfa_uf_s*,int /*<<< orphan*/ ),struct bfa_uf_s*) ; 
 scalar_t__ FUNC5 (struct bfa_uf_mod_s*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct fchs_s*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct fchs_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct bfa_s *bfa, struct bfi_uf_frm_rcvd_s *m)
{
	struct bfa_uf_mod_s *ufm = FUNC0(bfa);
	u16 uf_tag = m->buf_tag;
	struct bfa_uf_s *uf = &ufm->uf_list[uf_tag];
	struct bfa_uf_buf_s *uf_buf;
	uint8_t *buf;
	struct fchs_s *fchs;

	uf_buf = (struct bfa_uf_buf_s *)
			FUNC5(ufm, uf_tag, uf->pb_len);
	buf = &uf_buf->d[0];

	m->frm_len = FUNC3(m->frm_len);
	m->xfr_len = FUNC3(m->xfr_len);

	fchs = (struct fchs_s *)uf_buf;

	FUNC8(&uf->qe);	/* dequeue from posted queue */

	uf->data_ptr = buf;
	uf->data_len = m->xfr_len;

	FUNC1(uf->data_len < sizeof(struct fchs_s));

	if (uf->data_len == sizeof(struct fchs_s)) {
		FUNC6(bfa->plog, BFA_PL_MID_HAL_UF, BFA_PL_EID_RX,
			       uf->data_len, (struct fchs_s *)buf);
	} else {
		u32 pld_w0 = *((u32 *) (buf + sizeof(struct fchs_s)));
		FUNC7(bfa->plog, BFA_PL_MID_HAL_UF,
				      BFA_PL_EID_RX, uf->data_len,
				      (struct fchs_s *)buf, pld_w0);
	}

	if (bfa->fcs)
		FUNC2(uf, BFA_TRUE);
	else
		FUNC4(bfa, &uf->hcb_qe, __bfa_cb_uf_recv, uf);
}