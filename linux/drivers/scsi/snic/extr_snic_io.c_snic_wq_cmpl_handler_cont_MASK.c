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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct vnic_dev {int dummy; } ;
struct snic {int /*<<< orphan*/ * wq_lock; int /*<<< orphan*/ * wq; } ;
struct cq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  snic_wq_cmpl_frame_send ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct snic* FUNC3 (struct vnic_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct cq_desc*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct vnic_dev *vdev,
			  struct cq_desc *cq_desc,
			  u8 type,
			  u16 q_num,
			  u16 cmpl_idx,
			  void *opaque)
{
	struct snic *snic = FUNC3(vdev);
	unsigned long flags;

	FUNC0(q_num != 0);

	FUNC1(&snic->wq_lock[q_num], flags);
	FUNC4(&snic->wq[q_num],
			 cq_desc,
			 cmpl_idx,
			 snic_wq_cmpl_frame_send,
			 NULL);
	FUNC2(&snic->wq_lock[q_num], flags);

	return 0;
}