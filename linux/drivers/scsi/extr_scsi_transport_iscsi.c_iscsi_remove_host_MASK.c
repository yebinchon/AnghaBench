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
struct transport_container {int dummy; } ;
struct iscsi_cls_host {int /*<<< orphan*/  bsg_q; } ;
struct device {int dummy; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct transport_container *tc,
			     struct device *dev, struct device *cdev)
{
	struct Scsi_Host *shost = FUNC1(dev);
	struct iscsi_cls_host *ihost = shost->shost_data;

	FUNC0(ihost->bsg_q);
	return 0;
}