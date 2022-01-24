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
struct Scsi_Host {int io_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDOMAIN_REGION_SIZE ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned int ndev)
{
	struct Scsi_Host *sh = FUNC0(dev);
	int base = sh->io_port;

	FUNC2(sh);
	FUNC3(base, FDOMAIN_REGION_SIZE);
	FUNC1(dev, NULL);
	return 0;
}