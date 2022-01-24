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
struct se_hba {struct rd_host* hba_ptr; int /*<<< orphan*/  hba_id; } ;
struct rd_host {int /*<<< orphan*/  rd_host_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rd_host*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct se_hba *hba)
{
	struct rd_host *rd_host = hba->hba_ptr;

	FUNC1("CORE_HBA[%d] - Detached Ramdisk HBA: %u from"
		" Generic Target Core\n", hba->hba_id, rd_host->rd_host_id);

	FUNC0(rd_host);
	hba->hba_ptr = NULL;
}