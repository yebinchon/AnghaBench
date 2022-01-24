#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cssid; int id; } ;
struct chp_link {int fla; TYPE_1__ chpid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  __s390_process_res_acc ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct chp_link*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,...) ; 

__attribute__((used)) static void FUNC5(struct chp_link *link)
{
	char dbf_txt[15];

	FUNC4(dbf_txt, "accpr%x.%02x", link->chpid.cssid,
		link->chpid.id);
	FUNC0( 2, dbf_txt);
	if (link->fla != 0) {
		FUNC4(dbf_txt, "fla%x", link->fla);
		FUNC0( 2, dbf_txt);
	}
	/* Wait until previous actions have settled. */
	FUNC2();
	/*
	 * I/O resources may have become accessible.
	 * Scan through all subchannels that may be concerned and
	 * do a validation on those.
	 * The more information we have (info), the less scanning
	 * will we have to do.
	 */
	FUNC3(__s390_process_res_acc, NULL, link);
	FUNC1();
}