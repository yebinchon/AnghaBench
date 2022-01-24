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
typedef  int /*<<< orphan*/  u64 ;
struct vio_dev {int /*<<< orphan*/  unit_address; } ;
struct ibmvfc_host {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_SEND_CRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vio_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ibmvfc_host *vhost, u64 word1, u64 word2)
{
	struct vio_dev *vdev = FUNC1(vhost->dev);
	return FUNC0(H_SEND_CRQ, vdev->unit_address, word1, word2);
}