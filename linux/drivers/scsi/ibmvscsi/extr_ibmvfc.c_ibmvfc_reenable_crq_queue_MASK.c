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
struct vio_dev {int /*<<< orphan*/  unit_address; } ;
struct ibmvfc_host {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int H_BUSY ; 
 int /*<<< orphan*/  H_ENABLE_CRQ ; 
 int H_IN_PROGRESS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vio_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ibmvfc_host *vhost)
{
	int rc = 0;
	struct vio_dev *vdev = FUNC4(vhost->dev);

	/* Re-enable the CRQ */
	do {
		if (rc)
			FUNC2(100);
		rc = FUNC3(H_ENABLE_CRQ, vdev->unit_address);
	} while (rc == H_IN_PROGRESS || rc == H_BUSY || FUNC0(rc));

	if (rc)
		FUNC1(vhost->dev, "Error enabling adapter (rc=%d)\n", rc);

	return rc;
}