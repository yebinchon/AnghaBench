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
struct befs_mount_options {int use_uid; int use_gid; int debug; int /*<<< orphan*/ * iocharset; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int /*<<< orphan*/  INVALID_GID ; 
 int /*<<< orphan*/  INVALID_UID ; 
 int MAX_OPT_ARGS ; 
#define  Opt_charset 131 
#define  Opt_debug 130 
#define  Opt_gid 129 
#define  Opt_uid 128 
 int /*<<< orphan*/  befs_tokens ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 char* FUNC9 (char**,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(char *options, struct befs_mount_options *opts)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int option;
	kuid_t uid;
	kgid_t gid;

	/* Initialize options */
	opts->uid = GLOBAL_ROOT_UID;
	opts->gid = GLOBAL_ROOT_GID;
	opts->use_uid = 0;
	opts->use_gid = 0;
	opts->iocharset = NULL;
	opts->debug = 0;

	if (!options)
		return 1;

	while ((p = FUNC9(&options, ",")) != NULL) {
		int token;

		if (!*p)
			continue;

		token = FUNC7(p, befs_tokens, args);
		switch (token) {
		case Opt_uid:
			if (FUNC5(&args[0], &option))
				return 0;
			uid = INVALID_UID;
			if (option >= 0)
				uid = FUNC4(FUNC0(), option);
			if (!FUNC10(uid)) {
				FUNC8("Invalid uid %d, "
				       "using default\n", option);
				break;
			}
			opts->uid = uid;
			opts->use_uid = 1;
			break;
		case Opt_gid:
			if (FUNC5(&args[0], &option))
				return 0;
			gid = INVALID_GID;
			if (option >= 0)
				gid = FUNC3(FUNC0(), option);
			if (!FUNC1(gid)) {
				FUNC8("Invalid gid %d, "
				       "using default\n", option);
				break;
			}
			opts->gid = gid;
			opts->use_gid = 1;
			break;
		case Opt_charset:
			FUNC2(opts->iocharset);
			opts->iocharset = FUNC6(&args[0]);
			if (!opts->iocharset) {
				FUNC8("allocation failure for "
				       "iocharset string\n");
				return 0;
			}
			break;
		case Opt_debug:
			opts->debug = 1;
			break;
		default:
			FUNC8("Unrecognized mount option \"%s\" "
			       "or missing value\n", p);
			return 0;
		}
	}
	return 1;
}