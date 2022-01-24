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
struct tcm_loop_hba {struct Scsi_Host* sh; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 struct tcm_loop_hba* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct tcm_loop_hba *tl_hba;
	struct Scsi_Host *sh;

	tl_hba = FUNC2(dev);
	sh = tl_hba->sh;

	FUNC1(sh);
	FUNC0(sh);
	return 0;
}