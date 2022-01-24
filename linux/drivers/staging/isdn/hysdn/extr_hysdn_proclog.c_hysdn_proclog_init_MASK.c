#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct procdata {int /*<<< orphan*/  rd_queue; int /*<<< orphan*/  log_name; int /*<<< orphan*/  log; } ;
struct TYPE_4__ {void* proclog; int /*<<< orphan*/  myid; } ;
typedef  TYPE_1__ hysdn_card ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* PROC_LOG_BASENAME ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  hysdn_proc_entry ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct procdata* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_fops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

int
FUNC4(hysdn_card *card)
{
	struct procdata *pd;

	/* create a cardlog proc entry */

	if ((pd = FUNC1(sizeof(struct procdata), GFP_KERNEL)) != NULL) {
		FUNC3(pd->log_name, "%s%d", PROC_LOG_BASENAME, card->myid);
		pd->log = FUNC2(pd->log_name,
				      S_IFREG | S_IRUGO | S_IWUSR, hysdn_proc_entry,
				      &log_fops, card);

		FUNC0(&(pd->rd_queue));

		card->proclog = (void *) pd;	/* remember procfs structure */
	}
	return (0);
}