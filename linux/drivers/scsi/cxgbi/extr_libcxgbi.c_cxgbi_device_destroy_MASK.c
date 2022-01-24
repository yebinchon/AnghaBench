#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  port_csk; scalar_t__ max_connect; } ;
struct cxgbi_device {TYPE_1__ pmap; int /*<<< orphan*/  (* cdev2ppm ) (struct cxgbi_device*) ;int /*<<< orphan*/  nports; } ;

/* Variables and functions */
 int CXGBI_DBG_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct cxgbi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cxgbi_device*) ; 

__attribute__((used)) static inline void FUNC7(struct cxgbi_device *cdev)
{
	FUNC5(1 << CXGBI_DBG_DEV,
		"cdev 0x%p, p# %u.\n", cdev, cdev->nports);
	FUNC2(cdev);
	FUNC0(cdev);
	FUNC3(cdev->cdev2ppm(cdev));
	if (cdev->pmap.max_connect)
		FUNC1(cdev->pmap.port_csk);
	FUNC4(cdev);
}