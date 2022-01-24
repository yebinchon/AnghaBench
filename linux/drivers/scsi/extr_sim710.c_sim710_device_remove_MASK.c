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
struct Scsi_Host {int /*<<< orphan*/  base; int /*<<< orphan*/  irq; scalar_t__* hostdata; } ;
struct NCR_700_Host_Parameters {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct NCR_700_Host_Parameters*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct Scsi_Host *host = FUNC1(dev);
	struct NCR_700_Host_Parameters *hostdata =
		(struct NCR_700_Host_Parameters *)host->hostdata[0];

	FUNC5(host);
	FUNC0(host);
	FUNC3(hostdata);
	FUNC2(host->irq, host);
	FUNC4(host->base, 64);
	return 0;
}