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
struct vring_desc {int dummy; } ;
struct mlxbf_tmfifo_vring {struct vring_desc* desc_head; int /*<<< orphan*/ * desc; scalar_t__ pkt_len; } ;

/* Variables and functions */
 struct vring_desc* FUNC0 (struct mlxbf_tmfifo_vring*) ; 
 scalar_t__ FUNC1 (struct mlxbf_tmfifo_vring*,struct vring_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxbf_tmfifo_vring*,struct vring_desc*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mlxbf_tmfifo_vring *vring)
{
	struct vring_desc *desc_head;
	u32 len = 0;

	if (vring->desc_head) {
		desc_head = vring->desc_head;
		len = vring->pkt_len;
	} else {
		desc_head = FUNC0(vring);
		len = FUNC1(vring, desc_head);
	}

	if (desc_head)
		FUNC2(vring, desc_head, len);

	vring->pkt_len = 0;
	vring->desc = NULL;
	vring->desc_head = NULL;
}