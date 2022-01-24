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
struct zorro_dev {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  irq; } ;
struct NCR_700_Host_Parameters {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct NCR_700_Host_Parameters*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 struct NCR_700_Host_Parameters* FUNC4 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC5 (struct zorro_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct zorro_dev*) ; 

__attribute__((used)) static void FUNC7(struct zorro_dev *z)
{
	struct Scsi_Host *host = FUNC5(z);
	struct NCR_700_Host_Parameters *hostdata = FUNC4(host);

	FUNC3(host);

	FUNC0(host);
	FUNC2(hostdata);
	FUNC1(host->irq, host);
	FUNC6(z);
}