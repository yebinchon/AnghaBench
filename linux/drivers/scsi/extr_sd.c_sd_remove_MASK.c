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
struct scsi_disk {int /*<<< orphan*/  dev; int /*<<< orphan*/  opal_dev; int /*<<< orphan*/  disk; int /*<<< orphan*/  device; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  SD_MINORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct scsi_disk* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_sd_pm_domain ; 
 int /*<<< orphan*/  sd_default_probe ; 
 int /*<<< orphan*/  sd_ref_mutex ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	struct scsi_disk *sdkp;
	dev_t devt;

	sdkp = FUNC3(dev);
	devt = FUNC6(sdkp->disk);
	FUNC11(sdkp->device);

	FUNC0(&scsi_sd_pm_domain);
	FUNC5(&sdkp->dev);
	FUNC2(sdkp->disk);
	FUNC12(dev);

	FUNC7(sdkp->opal_dev);

	FUNC1(devt, SD_MINORS, NULL,
			    sd_default_probe, NULL, NULL);

	FUNC8(&sd_ref_mutex);
	FUNC4(dev, NULL);
	FUNC10(&sdkp->dev);
	FUNC9(&sd_ref_mutex);

	return 0;
}