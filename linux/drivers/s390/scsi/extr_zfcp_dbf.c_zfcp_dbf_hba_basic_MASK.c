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
struct zfcp_dbf_hba {int /*<<< orphan*/  id; int /*<<< orphan*/  tag; } ;
struct zfcp_dbf {int /*<<< orphan*/  hba_lock; int /*<<< orphan*/  hba; struct zfcp_dbf_hba hba_buf; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_DBF_HBA_BASIC ; 
 int /*<<< orphan*/  ZFCP_DBF_TAG_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const,struct zfcp_dbf_hba*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_dbf_hba*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(char *tag, struct zfcp_adapter *adapter)
{
	struct zfcp_dbf *dbf = adapter->dbf;
	struct zfcp_dbf_hba *rec = &dbf->hba_buf;
	static int const level = 1;
	unsigned long flags;

	if (FUNC6(!FUNC1(dbf->hba, level)))
		return;

	FUNC4(&dbf->hba_lock, flags);
	FUNC3(rec, 0, sizeof(*rec));

	FUNC2(rec->tag, tag, ZFCP_DBF_TAG_LEN);
	rec->id = ZFCP_DBF_HBA_BASIC;

	FUNC0(dbf->hba, level, rec, sizeof(*rec));
	FUNC5(&dbf->hba_lock, flags);
}