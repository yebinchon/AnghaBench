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
struct zfcp_dbf {int /*<<< orphan*/  rec; int /*<<< orphan*/  pay; int /*<<< orphan*/  hba; int /*<<< orphan*/  san; int /*<<< orphan*/  scsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_dbf*) ; 

__attribute__((used)) static void FUNC2(struct zfcp_dbf *dbf)
{
	if (!dbf)
		return;

	FUNC0(dbf->scsi);
	FUNC0(dbf->san);
	FUNC0(dbf->hba);
	FUNC0(dbf->pay);
	FUNC0(dbf->rec);
	FUNC1(dbf);
}