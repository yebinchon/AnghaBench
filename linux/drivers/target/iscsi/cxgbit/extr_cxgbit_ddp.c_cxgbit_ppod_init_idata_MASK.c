#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ulptx_idata {void* len; void* cmd_more; } ;
struct TYPE_2__ {void* wr_hi; } ;
struct ulp_mem_io {void* len16; void* lock_addr; void* dlen; void* cmd; TYPE_1__ wr; } ;
struct sk_buff {int dummy; } ;
struct cxgbit_device {int dummy; } ;
struct cxgbi_ppm {unsigned int llimit; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FW_ULPTX_WR ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (struct ulp_mem_io*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int PPOD_SIZE_SHIFT ; 
 unsigned int FUNC4 (int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ULP_TX_MEM_WRITE ; 
 int /*<<< orphan*/  ULP_TX_SC_IMM ; 
 struct ulp_mem_io* FUNC9 (struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC10 (unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC11 (unsigned int) ; 
 unsigned int FUNC12 (int,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC13(struct cxgbit_device *cdev, struct cxgbi_ppm *ppm,
		       unsigned int idx, unsigned int npods, unsigned int tid)
{
	struct ulp_mem_io *req;
	struct ulptx_idata *idata;
	unsigned int pm_addr = (idx << PPOD_SIZE_SHIFT) + ppm->llimit;
	unsigned int dlen = npods << PPOD_SIZE_SHIFT;
	unsigned int wr_len = FUNC12(sizeof(struct ulp_mem_io) +
				sizeof(struct ulptx_idata) + dlen, 16);
	struct sk_buff *skb;

	skb  = FUNC10(wr_len, GFP_KERNEL);
	if (!skb)
		return NULL;

	req = FUNC9(skb, wr_len);
	FUNC3(req, wr_len, 0, tid);
	req->wr.wr_hi = FUNC11(FUNC2(FW_ULPTX_WR) |
		FUNC1(0));
	req->cmd = FUNC11(FUNC5(ULP_TX_MEM_WRITE) |
		FUNC8(0) |
		FUNC4(1));
	req->dlen = FUNC11(FUNC7(dlen >> 5));
	req->lock_addr = FUNC11(FUNC6(pm_addr >> 5));
	req->len16 = FUNC11(FUNC0(wr_len - sizeof(req->wr), 16));

	idata = (struct ulptx_idata *)(req + 1);
	idata->cmd_more = FUNC11(FUNC5(ULP_TX_SC_IMM));
	idata->len = FUNC11(dlen);

	return skb;
}