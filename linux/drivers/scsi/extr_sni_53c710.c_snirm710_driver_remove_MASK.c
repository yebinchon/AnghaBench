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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct Scsi_Host {int /*<<< orphan*/  irq; scalar_t__* hostdata; } ;
struct NCR_700_Host_Parameters {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct NCR_700_Host_Parameters*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct Scsi_Host *host = FUNC1(&dev->dev);
	struct NCR_700_Host_Parameters *hostdata =
		(struct NCR_700_Host_Parameters *)host->hostdata[0];

	FUNC5(host);
	FUNC0(host);
	FUNC2(host->irq, host);
	FUNC3(hostdata->base);
	FUNC4(hostdata);

	return 0;
}