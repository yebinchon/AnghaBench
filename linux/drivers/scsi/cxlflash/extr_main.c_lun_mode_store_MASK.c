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
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxlflash_cfg {int /*<<< orphan*/  host; int /*<<< orphan*/  num_fc_ports; struct afu* afu; } ;
struct afu {int internal_lun; } ;
struct Scsi_Host {int /*<<< orphan*/  max_channel; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxlflash_cfg*) ; 
 struct Scsi_Host* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct cxlflash_cfg* FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC2(dev);
	struct cxlflash_cfg *cfg = FUNC5(shost);
	struct afu *afu = cfg->afu;
	int rc;
	u32 lun_mode;

	rc = FUNC3(buf, 10, &lun_mode);
	if (!rc && (lun_mode < 5) && (lun_mode != afu->internal_lun)) {
		afu->internal_lun = lun_mode;

		/*
		 * When configured for internal LUN, there is only one channel,
		 * channel number 0, else there will be one less than the number
		 * of fc ports for this card.
		 */
		if (afu->internal_lun)
			shost->max_channel = 0;
		else
			shost->max_channel = FUNC0(cfg->num_fc_ports);

		FUNC1(cfg);
		FUNC4(cfg->host);
	}

	return count;
}