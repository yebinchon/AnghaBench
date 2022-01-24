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
struct cifs_tcon {int dummy; } ;
struct cifs_ses {int dummy; } ;
struct cifs_sb_info {int /*<<< orphan*/  mnt_cifs_flags; } ;
struct TCP_Server_Info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_MOUNT_POSIX_PATHS ; 
 int /*<<< orphan*/  FUNC0 (struct cifs_ses*) ; 
 int /*<<< orphan*/  FUNC1 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC2 (struct TCP_Server_Info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static inline void FUNC4(struct cifs_sb_info *cifs_sb,
				   unsigned int xid,
				   struct TCP_Server_Info *server,
				   struct cifs_ses *ses, struct cifs_tcon *tcon)
{
	int rc = 0;

	if (tcon)
		FUNC1(tcon);
	else if (ses)
		FUNC0(ses);
	else if (server)
		FUNC2(server, 0);
	cifs_sb->mnt_cifs_flags &= ~CIFS_MOUNT_POSIX_PATHS;
	FUNC3(xid);
}