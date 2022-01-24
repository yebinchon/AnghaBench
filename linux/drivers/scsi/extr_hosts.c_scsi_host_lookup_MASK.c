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
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __scsi_host_match ; 
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned short*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct Scsi_Host* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shost_class ; 

struct Scsi_Host *FUNC4(unsigned short hostnum)
{
	struct device *cdev;
	struct Scsi_Host *shost = NULL;

	cdev = FUNC0(&shost_class, NULL, &hostnum,
				 __scsi_host_match);
	if (cdev) {
		shost = FUNC3(FUNC1(cdev));
		FUNC2(cdev);
	}
	return shost;
}