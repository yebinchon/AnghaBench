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
struct TYPE_2__ {void* wr_hi; } ;
struct ulp_mem_io {void* len; void* cmd_lock_addr; TYPE_1__ wr; } ;
struct sk_buff {scalar_t__ head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_WROPCODE_BYPASS ; 
 int IPPOD_SIZE ; 
 int /*<<< orphan*/  ULP_MEM_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ulp_mem_io*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC7(struct sk_buff *skb, unsigned int addr)
{
	struct ulp_mem_io *req = (struct ulp_mem_io *)skb->head;

	FUNC6(req, 0, sizeof(*req));

	req->wr.wr_hi = FUNC5(FUNC4(FW_WROPCODE_BYPASS));
	req->cmd_lock_addr = FUNC5(FUNC2(addr >> 5) |
				   FUNC0(ULP_MEM_WRITE));
	req->len = FUNC5(FUNC3(IPPOD_SIZE >> 5) |
			 FUNC1((IPPOD_SIZE >> 3) + 1));
}