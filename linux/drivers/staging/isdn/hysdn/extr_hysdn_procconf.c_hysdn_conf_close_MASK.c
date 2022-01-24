#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int f_mode; struct conf_writedata* private_data; TYPE_1__* f_cred; } ;
struct conf_writedata {scalar_t__ state; int /*<<< orphan*/  card; } ;
struct TYPE_6__ {int debug_flags; } ;
typedef  TYPE_2__ hysdn_card ;
struct TYPE_5__ {int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;

/* Variables and functions */
 scalar_t__ CONF_STATE_POF ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int LOG_PROC_ALL ; 
 int LOG_PROC_OPEN ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hysdn_conf_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct conf_writedata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct inode *ino, struct file *filep)
{
	hysdn_card *card;
	struct conf_writedata *cnf;
	int retval = 0;

	FUNC3(&hysdn_conf_mutex);
	card = FUNC0(ino);
	if (card->debug_flags & (LOG_PROC_OPEN | LOG_PROC_ALL))
		FUNC1(card, "config close for uid=%d gid=%d mode=0x%x",
			     filep->f_cred->fsuid, filep->f_cred->fsgid,
			     filep->f_mode);

	if ((filep->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_WRITE) {
		/* write only access -> write boot file or conf line */
		if (filep->private_data) {
			cnf = filep->private_data;

			if (cnf->state == CONF_STATE_POF)
				retval = FUNC5(cnf->card);	/* close the pof write */
			FUNC2(filep->private_data);	/* free allocated memory for buffer */

		}		/* handle write private data */
	} else if ((filep->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_READ) {
		/* read access -> output card info data */

		FUNC2(filep->private_data);	/* release memory */
	}
	FUNC4(&hysdn_conf_mutex);
	return (retval);
}