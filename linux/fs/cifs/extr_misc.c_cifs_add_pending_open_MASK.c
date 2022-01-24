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
struct tcon_link {int dummy; } ;
struct cifs_pending_open {struct tcon_link* tlink; } ;
struct cifs_fid {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_file_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cifs_fid*,struct tcon_link*,struct cifs_pending_open*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct tcon_link*) ; 

void
FUNC4(struct cifs_fid *fid, struct tcon_link *tlink,
		      struct cifs_pending_open *open)
{
	FUNC1(&FUNC3(tlink)->open_file_lock);
	FUNC0(fid, tlink, open);
	FUNC2(&FUNC3(open->tlink)->open_file_lock);
}