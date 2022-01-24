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
struct hisi_hba {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hisi_hba*) ; 
 int FUNC1 (struct hisi_hba*) ; 
 int FUNC2 (struct hisi_hba*) ; 

__attribute__((used)) static int FUNC3(struct hisi_hba *hisi_hba)
{
	int rc;

	rc = FUNC0(hisi_hba);
	if (rc)
		return rc;

	rc = FUNC1(hisi_hba);
	if (rc)
		return rc;

	rc = FUNC2(hisi_hba);
	if (rc)
		return rc;

	return 0;
}