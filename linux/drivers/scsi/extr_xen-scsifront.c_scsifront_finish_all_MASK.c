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
struct vscsiif_response {unsigned int rqid; int rslt; scalar_t__ residual_len; scalar_t__ sense_len; } ;
struct vscsifrnt_info {int /*<<< orphan*/  shadow_free_bitmap; } ;

/* Variables and functions */
 int DID_RESET ; 
 unsigned int VSCSIIF_MAX_REQS ; 
 int /*<<< orphan*/  FUNC0 (struct vscsifrnt_info*,struct vscsiif_response*) ; 
 int /*<<< orphan*/  FUNC1 (struct vscsifrnt_info*) ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vscsifrnt_info *info)
{
	unsigned i;
	struct vscsiif_response resp;

	FUNC1(info);

	for (i = 0; i < VSCSIIF_MAX_REQS; i++) {
		if (FUNC2(i, info->shadow_free_bitmap))
			continue;
		resp.rqid = i;
		resp.sense_len = 0;
		resp.rslt = DID_RESET << 16;
		resp.residual_len = 0;
		FUNC0(info, &resp);
	}
}