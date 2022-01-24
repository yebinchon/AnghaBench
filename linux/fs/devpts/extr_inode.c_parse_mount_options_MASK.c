#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  substring_t ;
struct pts_mount_opts {int setuid; int setgid; int mode; int ptmxmode; int max; int reserve; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_8__ {TYPE_1__* nsproxy; } ;
struct TYPE_7__ {TYPE_2__* nsproxy; } ;
struct TYPE_6__ {scalar_t__ mnt_ns; } ;
struct TYPE_5__ {scalar_t__ mnt_ns; } ;

/* Variables and functions */
 int DEVPTS_DEFAULT_MODE ; 
 int DEVPTS_DEFAULT_PTMX_MODE ; 
 int EINVAL ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int MAX_OPT_ARGS ; 
 int NR_UNIX98_PTY_MAX ; 
#define  Opt_gid 133 
#define  Opt_max 132 
#define  Opt_mode 131 
#define  Opt_newinstance 130 
#define  Opt_ptmxmode 129 
#define  Opt_uid 128 
 int PARSE_MOUNT ; 
 int S_IALLUGO ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ init_task ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(char *data, int op, struct pts_mount_opts *opts)
{
	char *p;
	kuid_t uid;
	kgid_t gid;

	opts->setuid  = 0;
	opts->setgid  = 0;
	opts->uid     = GLOBAL_ROOT_UID;
	opts->gid     = GLOBAL_ROOT_GID;
	opts->mode    = DEVPTS_DEFAULT_MODE;
	opts->ptmxmode = DEVPTS_DEFAULT_PTMX_MODE;
	opts->max     = NR_UNIX98_PTY_MAX;

	/* Only allow instances mounted from the initial mount
	 * namespace to tap the reserve pool of ptys.
	 */
	if (op == PARSE_MOUNT)
		opts->reserve =
			(current->nsproxy->mnt_ns == init_task.nsproxy->mnt_ns);

	while ((p = FUNC8(&data, ",")) != NULL) {
		substring_t args[MAX_OPT_ARGS];
		int token;
		int option;

		if (!*p)
			continue;

		token = FUNC6(p, tokens, args);
		switch (token) {
		case Opt_uid:
			if (FUNC4(&args[0], &option))
				return -EINVAL;
			uid = FUNC3(FUNC0(), option);
			if (!FUNC9(uid))
				return -EINVAL;
			opts->uid = uid;
			opts->setuid = 1;
			break;
		case Opt_gid:
			if (FUNC4(&args[0], &option))
				return -EINVAL;
			gid = FUNC2(FUNC0(), option);
			if (!FUNC1(gid))
				return -EINVAL;
			opts->gid = gid;
			opts->setgid = 1;
			break;
		case Opt_mode:
			if (FUNC5(&args[0], &option))
				return -EINVAL;
			opts->mode = option & S_IALLUGO;
			break;
		case Opt_ptmxmode:
			if (FUNC5(&args[0], &option))
				return -EINVAL;
			opts->ptmxmode = option & S_IALLUGO;
			break;
		case Opt_newinstance:
			break;
		case Opt_max:
			if (FUNC4(&args[0], &option) ||
			    option < 0 || option > NR_UNIX98_PTY_MAX)
				return -EINVAL;
			opts->max = option;
			break;
		default:
			FUNC7("called with bogus options\n");
			return -EINVAL;
		}
	}

	return 0;
}