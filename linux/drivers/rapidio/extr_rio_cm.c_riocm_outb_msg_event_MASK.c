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
struct rio_mport {int dummy; } ;
struct cm_dev {int /*<<< orphan*/  mport; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cm_dev*,int) ; 

__attribute__((used)) static void FUNC2(struct rio_mport *mport, void *dev_id,
				 int mbox, int slot)
{
	struct cm_dev *cm = dev_id;

	if (cm && FUNC0(cm->mport))
		FUNC1(cm, slot);
}