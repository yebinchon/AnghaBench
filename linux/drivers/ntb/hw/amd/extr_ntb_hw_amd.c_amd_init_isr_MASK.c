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
struct amd_ntb_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_DB_CNT ; 
 int /*<<< orphan*/  AMD_MSIX_VECTOR_CNT ; 
 int FUNC0 (struct amd_ntb_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct amd_ntb_dev *ndev)
{
	return FUNC0(ndev, AMD_DB_CNT, AMD_MSIX_VECTOR_CNT);
}