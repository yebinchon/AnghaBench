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
typedef  int /*<<< orphan*/  uint32_t ;
struct tcmu_dev {int /*<<< orphan*/  data_blocks; } ;
struct page {int dummy; } ;

/* Variables and functions */
 struct page* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct page *
FUNC1(struct tcmu_dev *udev, uint32_t dbi)
{
	return FUNC0(&udev->data_blocks, dbi);
}