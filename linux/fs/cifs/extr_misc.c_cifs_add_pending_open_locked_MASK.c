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
struct cifs_pending_open {int /*<<< orphan*/  olist; struct tcon_link* tlink; int /*<<< orphan*/  oplock; int /*<<< orphan*/  lease_key; } ;
struct cifs_fid {struct cifs_pending_open* pending_open; int /*<<< orphan*/  lease_key; } ;
struct TYPE_2__ {int /*<<< orphan*/  pending_opens; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_OPLOCK_NO_CHANGE ; 
 int /*<<< orphan*/  SMB2_LEASE_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct tcon_link*) ; 

void
FUNC3(struct cifs_fid *fid, struct tcon_link *tlink,
			     struct cifs_pending_open *open)
{
	FUNC1(open->lease_key, fid->lease_key, SMB2_LEASE_KEY_SIZE);
	open->oplock = CIFS_OPLOCK_NO_CHANGE;
	open->tlink = tlink;
	fid->pending_open = open;
	FUNC0(&open->olist, &FUNC2(tlink)->pending_opens);
}