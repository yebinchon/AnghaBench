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
struct kpc_dma_device {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  kpc_dma_list ; 
 int /*<<< orphan*/  kpc_dma_mtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct kpc_dma_device *ldev)
{
	FUNC1(&kpc_dma_mtx);
	FUNC0(&ldev->list, &kpc_dma_list);
	FUNC2(&kpc_dma_mtx);
}