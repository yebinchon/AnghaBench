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
struct pvscsi_sg_list {int dummy; } ;
struct pvscsi_ctx {int /*<<< orphan*/ * sgl; scalar_t__ sglPA; } ;
struct pvscsi_adapter {int req_depth; struct pvscsi_ctx* cmd_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int SGL_SIZE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct pvscsi_adapter *adapter)
{
	struct pvscsi_ctx *ctx;
	int i;

	ctx = adapter->cmd_map;
	FUNC1(sizeof(struct pvscsi_sg_list) > SGL_SIZE);

	for (i = 0; i < adapter->req_depth; ++i, ++ctx) {
		ctx->sgl = (void *)FUNC3(GFP_KERNEL,
						    FUNC5(SGL_SIZE));
		ctx->sglPA = 0;
		FUNC0(!FUNC2(((unsigned long)ctx->sgl), PAGE_SIZE));
		if (!ctx->sgl) {
			for (; i >= 0; --i, --ctx) {
				FUNC4((unsigned long)ctx->sgl,
					   FUNC5(SGL_SIZE));
				ctx->sgl = NULL;
			}
			return -ENOMEM;
		}
	}

	return 0;
}