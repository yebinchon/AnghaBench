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
struct nvme_id_ctrl {int /*<<< orphan*/  fr; int /*<<< orphan*/  mn; int /*<<< orphan*/  vid; } ;
struct nvme_core_quirk_entry {scalar_t__ vid; int /*<<< orphan*/  fr; int /*<<< orphan*/  mn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC2(const struct nvme_id_ctrl *id,
			  const struct nvme_core_quirk_entry *q)
{
	return q->vid == FUNC0(id->vid) &&
		FUNC1(id->mn, q->mn, sizeof(id->mn)) &&
		FUNC1(id->fr, q->fr, sizeof(id->fr));
}