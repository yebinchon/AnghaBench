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
struct chp_id {int cssid; int id; } ;
struct chp_link {struct chp_id chpid; } ;
struct channel_path {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  __s390_process_res_acc ; 
 scalar_t__ FUNC1 (struct chp_id) ; 
 int /*<<< orphan*/  FUNC2 (struct channel_path*) ; 
 struct channel_path* FUNC3 (struct chp_id) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct chp_link*) ; 
 int /*<<< orphan*/  FUNC7 (struct chp_link*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int,int) ; 

void FUNC11(struct chp_id chpid)
{
	struct channel_path *chp = FUNC3(chpid);
	struct chp_link link;
	char dbf_txt[15];

	FUNC10(dbf_txt, "cadd%x.%02x", chpid.cssid, chpid.id);
	FUNC0(2, dbf_txt);

	if (FUNC1(chpid) != 0) {
		FUNC7(&link, 0, sizeof(struct chp_link));
		link.chpid = chpid;
		/* Wait until previous actions have settled. */
		FUNC5();

		FUNC8(&chp->lock);
		FUNC2(chp);
		FUNC9(&chp->lock);

		FUNC6(__s390_process_res_acc, NULL,
					   &link);
		FUNC4();
	}
}