#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cifs_tcon {TYPE_2__* ses; } ;
struct cifs_fid {int /*<<< orphan*/  volatile_fid; int /*<<< orphan*/  persistent_fid; } ;
struct cifsInodeInfo {int /*<<< orphan*/  lease_key; } ;
struct TYPE_4__ {TYPE_1__* server; } ;
struct TYPE_3__ {int capabilities; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cifsInodeInfo*) ; 
 int SMB2_GLOBAL_CAP_LEASING ; 
 int FUNC1 (int /*<<< orphan*/ ,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cifsInodeInfo*) ; 

__attribute__((used)) static int
FUNC4(struct cifs_tcon *tcon, struct cifs_fid *fid,
		     struct cifsInodeInfo *cinode)
{
	if (tcon->ses->server->capabilities & SMB2_GLOBAL_CAP_LEASING)
		return FUNC1(0, tcon, cinode->lease_key,
					FUNC3(cinode));

	return FUNC2(0, tcon, fid->persistent_fid,
				 fid->volatile_fid,
				 FUNC0(cinode) ? 1 : 0);
}