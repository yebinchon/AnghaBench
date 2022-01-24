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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  substring_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_TREE_OBJECTID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_subvol 130 
#define  Opt_subvolid 129 
#define  Opt_subvolrootid 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC7(const char *options, char **subvol_name,
		u64 *subvol_objectid)
{
	substring_t args[MAX_OPT_ARGS];
	char *opts, *orig, *p;
	int error = 0;
	u64 subvolid;

	if (!options)
		return 0;

	/*
	 * strsep changes the string, duplicate it because
	 * btrfs_parse_device_options gets called later
	 */
	opts = FUNC1(options, GFP_KERNEL);
	if (!opts)
		return -ENOMEM;
	orig = opts;

	while ((p = FUNC6(&opts, ",")) != NULL) {
		int token;
		if (!*p)
			continue;

		token = FUNC3(p, tokens, args);
		switch (token) {
		case Opt_subvol:
			FUNC0(*subvol_name);
			*subvol_name = FUNC2(&args[0]);
			if (!*subvol_name) {
				error = -ENOMEM;
				goto out;
			}
			break;
		case Opt_subvolid:
			error = FUNC4(&args[0], &subvolid);
			if (error)
				goto out;

			/* we want the original fs_tree */
			if (subvolid == 0)
				subvolid = BTRFS_FS_TREE_OBJECTID;

			*subvol_objectid = subvolid;
			break;
		case Opt_subvolrootid:
			FUNC5("BTRFS: 'subvolrootid' mount option is deprecated and has no effect\n");
			break;
		default:
			break;
		}
	}

out:
	FUNC0(orig);
	return error;
}