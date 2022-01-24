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
struct send_ctx {int send_size; scalar_t__ send_buf; } ;
struct btrfs_cmd_header {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct send_ctx *sctx, int cmd)
{
	struct btrfs_cmd_header *hdr;

	if (FUNC1(!sctx->send_buf))
		return -EINVAL;

	FUNC0(sctx->send_size);

	sctx->send_size += sizeof(*hdr);
	hdr = (struct btrfs_cmd_header *)sctx->send_buf;
	hdr->cmd = FUNC2(cmd);

	return 0;
}