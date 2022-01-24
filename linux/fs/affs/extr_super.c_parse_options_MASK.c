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
typedef  int s32 ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int MAX_OPT_ARGS ; 
#define  Opt_bs 140 
#define  Opt_ignore 139 
#define  Opt_mode 138 
#define  Opt_mufs 137 
#define  Opt_notruncate 136 
#define  Opt_prefix 135 
#define  Opt_protect 134 
#define  Opt_reserved 133 
#define  Opt_root 132 
#define  Opt_setgid 131 
#define  Opt_setuid 130 
#define  Opt_verbose 129 
#define  Opt_volume 128 
 int /*<<< orphan*/  SF_IMMUTABLE ; 
 int /*<<< orphan*/  SF_MUFS ; 
 int /*<<< orphan*/  SF_NO_TRUNCATE ; 
 int /*<<< orphan*/  SF_PREFIX ; 
 int /*<<< orphan*/  SF_SETGID ; 
 int /*<<< orphan*/  SF_SETMODE ; 
 int /*<<< orphan*/  SF_SETUID ; 
 int /*<<< orphan*/  SF_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 char* FUNC14 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(char *options, kuid_t *uid, kgid_t *gid, int *mode, int *reserved, s32 *root,
		int *blocksize, char **prefix, char *volume, unsigned long *mount_opts)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];

	/* Fill in defaults */

	*uid        = FUNC2();
	*gid        = FUNC1();
	*reserved   = 2;
	*root       = -1;
	*blocksize  = -1;
	volume[0]   = ':';
	volume[1]   = 0;
	*mount_opts = 0;
	if (!options)
		return 1;

	while ((p = FUNC14(&options, ",")) != NULL) {
		int token, n, option;
		if (!*p)
			continue;

		token = FUNC11(p, tokens, args);
		switch (token) {
		case Opt_bs:
			if (FUNC8(&args[0], &n))
				return 0;
			if (n != 512 && n != 1024 && n != 2048
			    && n != 4096) {
				FUNC12("Invalid blocksize (512, 1024, 2048, 4096 allowed)\n");
				return 0;
			}
			*blocksize = n;
			break;
		case Opt_mode:
			if (FUNC9(&args[0], &option))
				return 0;
			*mode = option & 0777;
			FUNC0(*mount_opts, SF_SETMODE);
			break;
		case Opt_mufs:
			FUNC0(*mount_opts, SF_MUFS);
			break;
		case Opt_notruncate:
			FUNC0(*mount_opts, SF_NO_TRUNCATE);
			break;
		case Opt_prefix:
			FUNC5(*prefix);
			*prefix = FUNC10(&args[0]);
			if (!*prefix)
				return 0;
			FUNC0(*mount_opts, SF_PREFIX);
			break;
		case Opt_protect:
			FUNC0(*mount_opts, SF_IMMUTABLE);
			break;
		case Opt_reserved:
			if (FUNC8(&args[0], reserved))
				return 0;
			break;
		case Opt_root:
			if (FUNC8(&args[0], root))
				return 0;
			break;
		case Opt_setgid:
			if (FUNC8(&args[0], &option))
				return 0;
			*gid = FUNC6(FUNC3(), option);
			if (!FUNC4(*gid))
				return 0;
			FUNC0(*mount_opts, SF_SETGID);
			break;
		case Opt_setuid:
			if (FUNC8(&args[0], &option))
				return 0;
			*uid = FUNC7(FUNC3(), option);
			if (!FUNC15(*uid))
				return 0;
			FUNC0(*mount_opts, SF_SETUID);
			break;
		case Opt_verbose:
			FUNC0(*mount_opts, SF_VERBOSE);
			break;
		case Opt_volume: {
			char *vol = FUNC10(&args[0]);
			if (!vol)
				return 0;
			FUNC13(volume, vol, 32);
			FUNC5(vol);
			break;
		}
		case Opt_ignore:
		 	/* Silently ignore the quota options */
			break;
		default:
			FUNC12("Unrecognized mount option \"%s\" or missing value\n",
				p);
			return 0;
		}
	}
	return 1;
}