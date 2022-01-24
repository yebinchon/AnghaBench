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
struct iscsi_ooo_cmdsn {int /*<<< orphan*/  ooo_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct iscsi_ooo_cmdsn* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lio_ooo_cache ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static struct iscsi_ooo_cmdsn *FUNC3(void)
{
	struct iscsi_ooo_cmdsn *ooo_cmdsn = NULL;

	ooo_cmdsn = FUNC1(lio_ooo_cache, GFP_ATOMIC);
	if (!ooo_cmdsn) {
		FUNC2("Unable to allocate memory for"
			" struct iscsi_ooo_cmdsn.\n");
		return NULL;
	}
	FUNC0(&ooo_cmdsn->ooo_list);

	return ooo_cmdsn;
}