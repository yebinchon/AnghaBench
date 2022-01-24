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
struct TYPE_4__ {int /*<<< orphan*/ * from; int /*<<< orphan*/  to; } ;
typedef  TYPE_1__ substring_t ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int MAX_OPT_ARGS ; 
#define  Opt_acl 132 
#define  Opt_cache_strategy 131 
#define  Opt_noacl 130 
#define  Opt_nouser_xattr 129 
#define  Opt_user_xattr 128 
 int /*<<< orphan*/  POSIX_ACL ; 
 int /*<<< orphan*/  XATTR_USER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct super_block*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*) ; 
 int /*<<< orphan*/  erofs_tokens ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb, char *options)
{
	substring_t args[MAX_OPT_ARGS];
	char *p;
	int err;

	if (!options)
		return 0;

	while ((p = FUNC7(&options, ","))) {
		int token;

		if (!*p)
			continue;

		args[0].to = *(args[0].from = NULL);
		token = FUNC5(p, erofs_tokens, args);

		switch (token) {
#ifdef CONFIG_EROFS_FS_XATTR
		case Opt_user_xattr:
			set_opt(EROFS_SB(sb), XATTR_USER);
			break;
		case Opt_nouser_xattr:
			clear_opt(EROFS_SB(sb), XATTR_USER);
			break;
#else
		case Opt_user_xattr:
			FUNC4(sb, "user_xattr options not supported");
			break;
		case Opt_nouser_xattr:
			FUNC4(sb, "nouser_xattr options not supported");
			break;
#endif
#ifdef CONFIG_EROFS_FS_POSIX_ACL
		case Opt_acl:
			set_opt(EROFS_SB(sb), POSIX_ACL);
			break;
		case Opt_noacl:
			clear_opt(EROFS_SB(sb), POSIX_ACL);
			break;
#else
		case Opt_acl:
			FUNC4(sb, "acl options not supported");
			break;
		case Opt_noacl:
			FUNC4(sb, "noacl options not supported");
			break;
#endif
		case Opt_cache_strategy:
			err = FUNC2(sb, args);
			if (err)
				return err;
			break;
		default:
			FUNC3(sb, "Unrecognized mount option \"%s\" or missing value", p);
			return -EINVAL;
		}
	}
	return 0;
}