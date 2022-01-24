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
struct tee_shm_pool_mgr {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tee_shm_pool_mgr*) ; 

__attribute__((used)) static void FUNC2(struct tee_shm_pool_mgr *poolm)
{
	FUNC0(poolm->private_data);
	FUNC1(poolm);
}