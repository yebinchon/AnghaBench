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
typedef  int u16 ;
struct send_ctx {int send_max_size; int send_size; int send_buf; } ;
struct btrfs_tlv_header {void* tlv_len; void* tlv_type; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_tlv_header*,void const*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct send_ctx *sctx, u16 attr, const void *data, int len)
{
	struct btrfs_tlv_header *hdr;
	int total_len = sizeof(*hdr) + len;
	int left = sctx->send_max_size - sctx->send_size;

	if (FUNC2(left < total_len))
		return -EOVERFLOW;

	hdr = (struct btrfs_tlv_header *) (sctx->send_buf + sctx->send_size);
	hdr->tlv_type = FUNC0(attr);
	hdr->tlv_len = FUNC0(len);
	FUNC1(hdr + 1, data, len);
	sctx->send_size += total_len;

	return 0;
}