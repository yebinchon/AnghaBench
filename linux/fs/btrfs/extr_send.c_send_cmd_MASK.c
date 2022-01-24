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
typedef  scalar_t__ u32 ;
struct send_ctx {scalar_t__ send_size; int /*<<< orphan*/ * cmd_send_size; int /*<<< orphan*/  total_send_size; int /*<<< orphan*/  send_off; scalar_t__ send_buf; int /*<<< orphan*/  send_filp; } ;
struct btrfs_cmd_header {int /*<<< orphan*/  cmd; void* crc; void* len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned char*,scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct send_ctx *sctx)
{
	int ret;
	struct btrfs_cmd_header *hdr;
	u32 crc;

	hdr = (struct btrfs_cmd_header *)sctx->send_buf;
	hdr->len = FUNC1(sctx->send_size - sizeof(*hdr));
	hdr->crc = 0;

	crc = FUNC0(0, (unsigned char *)sctx->send_buf, sctx->send_size);
	hdr->crc = FUNC1(crc);

	ret = FUNC3(sctx->send_filp, sctx->send_buf, sctx->send_size,
					&sctx->send_off);

	sctx->total_send_size += sctx->send_size;
	sctx->cmd_send_size[FUNC2(hdr->cmd)] += sctx->send_size;
	sctx->send_size = 0;

	return ret;
}