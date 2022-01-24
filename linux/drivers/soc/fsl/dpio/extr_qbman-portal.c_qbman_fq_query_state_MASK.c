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
typedef  int u32 ;
struct qbman_swp {int dummy; } ;
struct qbman_fq_query_np_rslt {int verb; int /*<<< orphan*/  rslt; } ;
struct qbman_fq_query_desc {int /*<<< orphan*/  fqid; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int QBMAN_FQ_QUERY_NP ; 
 int /*<<< orphan*/  QBMAN_MC_RSLT_OK ; 
 int QBMAN_RESPONSE_VERB_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 void* FUNC3 (struct qbman_swp*,struct qbman_fq_query_desc*,int) ; 
 scalar_t__ FUNC4 (struct qbman_swp*) ; 

int FUNC5(struct qbman_swp *s, u32 fqid,
			 struct qbman_fq_query_np_rslt *r)
{
	struct qbman_fq_query_desc *p;
	void *resp;

	p = (struct qbman_fq_query_desc *)FUNC4(s);
	if (!p)
		return -EBUSY;

	/* FQID is a 24 bit value */
	p->fqid = FUNC1(fqid & 0x00FFFFFF);
	resp = FUNC3(s, p, QBMAN_FQ_QUERY_NP);
	if (!resp) {
		FUNC2("qbman: Query FQID %d NP fields failed, no response\n",
		       fqid);
		return -EIO;
	}
	*r = *(struct qbman_fq_query_np_rslt *)resp;
	/* Decode the outcome */
	FUNC0((r->verb & QBMAN_RESPONSE_VERB_MASK) != QBMAN_FQ_QUERY_NP);

	/* Determine success or failure */
	if (r->rslt != QBMAN_MC_RSLT_OK) {
		FUNC2("Query NP fields of FQID 0x%x failed, code=0x%02x\n",
		       p->fqid, r->rslt);
		return -EIO;
	}

	return 0;
}