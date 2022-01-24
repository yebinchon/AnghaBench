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
struct nvme_ns_ids {int /*<<< orphan*/  eui64; int /*<<< orphan*/  nguid; int /*<<< orphan*/  uuid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct nvme_ns_ids *ids)
{
	return !FUNC1(&ids->uuid) ||
		FUNC0(ids->nguid, 0, sizeof(ids->nguid)) ||
		FUNC0(ids->eui64, 0, sizeof(ids->eui64));
}