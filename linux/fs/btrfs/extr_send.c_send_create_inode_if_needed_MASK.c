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
struct send_ctx {int /*<<< orphan*/  cur_ino; int /*<<< orphan*/  cur_inode_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct send_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct send_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct send_ctx *sctx)
{
	int ret;

	if (FUNC0(sctx->cur_inode_mode)) {
		ret = FUNC1(sctx, sctx->cur_ino);
		if (ret < 0)
			goto out;
		if (ret) {
			ret = 0;
			goto out;
		}
	}

	ret = FUNC2(sctx, sctx->cur_ino);
	if (ret < 0)
		goto out;

out:
	return ret;
}