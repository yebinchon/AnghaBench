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
struct cifs_search_info {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_fid {int /*<<< orphan*/  netfid; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int FUNC0 (unsigned int const,struct cifs_tcon*,char const*,struct cifs_sb_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cifs_search_info*,int) ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC2(const unsigned int xid, struct cifs_tcon *tcon,
		     const char *path, struct cifs_sb_info *cifs_sb,
		     struct cifs_fid *fid, __u16 search_flags,
		     struct cifs_search_info *srch_inf)
{
	int rc;

	rc = FUNC0(xid, tcon, path, cifs_sb,
			   &fid->netfid, search_flags, srch_inf, true);
	if (rc)
		FUNC1(FYI, "find first failed=%d\n", rc);
	return rc;
}