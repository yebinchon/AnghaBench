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
struct platform_device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  irq; } ;
struct NCR_700_Host_Parameters {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct NCR_700_Host_Parameters*) ; 
 struct Scsi_Host* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 struct NCR_700_Host_Parameters* FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC6(struct platform_device *dev)
{
	struct Scsi_Host *host = FUNC3(dev);
	struct NCR_700_Host_Parameters *hostdata = FUNC5(host);

	FUNC4(host);
	FUNC0(host);
	FUNC2(hostdata);
	FUNC1(host->irq, host);

	return 0;
}