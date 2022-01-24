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
typedef  int /*<<< orphan*/  ulong ;
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct snic_io_hdr {scalar_t__ flags; int /*<<< orphan*/  init_ctx; int /*<<< orphan*/  sg_cnt; void* cmnd_id; void* hid; scalar_t__ protocol; void* status; void* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct snic_io_hdr *hdr, u8 typ, u8 status, u32 id, u32 hid,
		u16 sg_cnt, ulong ctx)
{
	hdr->type = typ;
	hdr->status = status;
	hdr->protocol = 0;
	hdr->hid = FUNC1(hid);
	hdr->cmnd_id = FUNC1(id);
	hdr->sg_cnt = FUNC0(sg_cnt);
	hdr->init_ctx = ctx;
	hdr->flags = 0;
}