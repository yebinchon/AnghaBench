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
struct vnic_dev {int dummy; } ;
struct snic {int /*<<< orphan*/  shost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct vnic_dev*,int*) ; 
 struct snic* FUNC2 (struct vnic_dev*) ; 

__attribute__((used)) static int
FUNC3(struct vnic_dev *vdev, int *done)
{
	struct snic *snic = FUNC2(vdev);
	int ret;
	int nretries = 5;

	do {
		ret = FUNC1(vdev, done);
		if (ret == 0)
			break;

		FUNC0(snic->shost, "VNIC_DEV_OPEN Timedout.\n");
	} while (nretries--);

	return ret;
}