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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int /*<<< orphan*/  commands_outstanding; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 struct ctlr_info* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
	     struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC1(dev);
	struct ctlr_info *h = FUNC2(shost);

	return FUNC3(buf, 20, "%d\n",
			FUNC0(&h->commands_outstanding));
}