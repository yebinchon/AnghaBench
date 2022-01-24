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
typedef  int /*<<< orphan*/  tmpbuf ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int raid_offload_debug; TYPE_1__* pdev; } ;
struct Scsi_Host {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 size_t EACCES ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct ctlr_info* FUNC3 (struct Scsi_Host*) ; 
 int FUNC4 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t count)
{
	int debug_level, len;
	struct ctlr_info *h;
	struct Scsi_Host *shost = FUNC1(dev);
	char tmpbuf[10];

	if (!FUNC0(CAP_SYS_ADMIN) || !FUNC0(CAP_SYS_RAWIO))
		return -EACCES;
	len = count > sizeof(tmpbuf) - 1 ? sizeof(tmpbuf) - 1 : count;
	FUNC5(tmpbuf, buf, len);
	tmpbuf[len] = '\0';
	if (FUNC4(tmpbuf, "%d", &debug_level) != 1)
		return -EINVAL;
	if (debug_level < 0)
		debug_level = 0;
	h = FUNC3(shost);
	h->raid_offload_debug = debug_level;
	FUNC2(&h->pdev->dev, "hpsa: Set raid_offload_debug level = %d\n",
		h->raid_offload_debug);
	return count;
}