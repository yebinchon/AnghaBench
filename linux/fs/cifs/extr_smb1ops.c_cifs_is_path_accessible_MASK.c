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
struct cifs_sb_info {int /*<<< orphan*/  local_nls; } ;
typedef  int /*<<< orphan*/  FILE_ALL_INFO ;

/* Variables and functions */
 int FUNC0 (unsigned int const,struct cifs_tcon*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (unsigned int const,struct cifs_tcon*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(const unsigned int xid, struct cifs_tcon *tcon,
			struct cifs_sb_info *cifs_sb, const char *full_path)
{
	int rc;
	FILE_ALL_INFO *file_info;

	file_info = FUNC4(sizeof(FILE_ALL_INFO), GFP_KERNEL);
	if (file_info == NULL)
		return -ENOMEM;

	rc = FUNC0(xid, tcon, full_path, file_info,
			      0 /* not legacy */, cifs_sb->local_nls,
			      FUNC2(cifs_sb));

	if (rc == -EOPNOTSUPP || rc == -EINVAL)
		rc = FUNC1(xid, tcon, full_path, file_info,
				cifs_sb->local_nls, FUNC2(cifs_sb));
	FUNC3(file_info);
	return rc;
}