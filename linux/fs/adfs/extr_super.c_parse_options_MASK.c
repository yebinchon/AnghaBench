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
typedef  int /*<<< orphan*/  substring_t ;
struct super_block {int dummy; } ;
struct adfs_sb_info {int s_owner_mask; int s_other_mask; int s_ftsuffix; int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int MAX_OPT_ARGS ; 
#define  Opt_ftsuffix 132 
#define  Opt_gid 131 
#define  Opt_othmask 130 
#define  Opt_ownmask 129 
#define  Opt_uid 128 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb, struct adfs_sb_info *asb,
			 char *options)
{
	char *p;
	int option;

	if (!options)
		return 0;

	while ((p = FUNC8(&options, ",")) != NULL) {
		substring_t args[MAX_OPT_ARGS];
		int token;
		if (!*p)
			continue;

		token = FUNC7(p, tokens, args);
		switch (token) {
		case Opt_uid:
			if (FUNC5(args, &option))
				return -EINVAL;
			asb->s_uid = FUNC4(FUNC1(), option);
			if (!FUNC9(asb->s_uid))
				return -EINVAL;
			break;
		case Opt_gid:
			if (FUNC5(args, &option))
				return -EINVAL;
			asb->s_gid = FUNC3(FUNC1(), option);
			if (!FUNC2(asb->s_gid))
				return -EINVAL;
			break;
		case Opt_ownmask:
			if (FUNC6(args, &option))
				return -EINVAL;
			asb->s_owner_mask = option;
			break;
		case Opt_othmask:
			if (FUNC6(args, &option))
				return -EINVAL;
			asb->s_other_mask = option;
			break;
		case Opt_ftsuffix:
			if (FUNC5(args, &option))
				return -EINVAL;
			asb->s_ftsuffix = option;
			break;
		default:
			FUNC0(sb, KERN_ERR,
				 "unrecognised mount option \"%s\" or missing value",
				 p);
			return -EINVAL;
		}
	}
	return 0;
}