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
struct send_ctx {int /*<<< orphan*/  send_off; int /*<<< orphan*/  send_filp; } ;
struct btrfs_stream_header {int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_SEND_STREAM_MAGIC ; 
 int /*<<< orphan*/  BTRFS_SEND_STREAM_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct btrfs_stream_header*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct send_ctx *sctx)
{
	struct btrfs_stream_header hdr;

	FUNC1(hdr.magic, BTRFS_SEND_STREAM_MAGIC);
	hdr.version = FUNC0(BTRFS_SEND_STREAM_VERSION);

	return FUNC2(sctx->send_filp, &hdr, sizeof(hdr),
					&sctx->send_off);
}