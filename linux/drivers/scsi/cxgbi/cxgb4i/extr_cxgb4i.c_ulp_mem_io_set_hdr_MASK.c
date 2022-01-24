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
struct cxgbi_device {int dummy; } ;
struct cxgb4_lld_info {int /*<<< orphan*/  adapter_type; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FW_ULPTX_WR ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ulp_mem_io*,unsigned int,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC4 (int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ULP_TX_MEM_WRITE ; 
 int /*<<< orphan*/  ULP_TX_SC_IMM ; 
 struct cxgb4_lld_info* FUNC9 (struct cxgbi_device*) ; 
 void* FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC12(struct cxgbi_device *cdev,
		   struct ulp_mem_io *req,
		   unsigned int wr_len, unsigned int dlen,
		   unsigned int pm_addr,
		   int tid)
{
	struct cxgb4_lld_info *lldi = FUNC9(cdev);
	struct ulptx_idata *idata = (struct ulptx_idata *)(req + 1);

	FUNC3(req, wr_len, 0, tid);
	req->wr.wr_hi = FUNC10(FUNC2(FW_ULPTX_WR) |
		FUNC1(0));
	req->cmd = FUNC10(FUNC5(ULP_TX_MEM_WRITE) |
		FUNC8(FUNC11(lldi->adapter_type)) |
		FUNC4(!FUNC11(lldi->adapter_type)));
	req->dlen = FUNC10(FUNC7(dlen >> 5));
	req->lock_addr = FUNC10(FUNC6(pm_addr >> 5));
	req->len16 = FUNC10(FUNC0(wr_len - sizeof(req->wr), 16));

	idata->cmd_more = FUNC10(FUNC5(ULP_TX_SC_IMM));
	idata->len = FUNC10(dlen);
}