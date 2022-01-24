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
typedef  void* u64 ;
typedef  int /*<<< orphan*/  substring_t ;
struct fcloop_ctrl_options {int mask; int roles; int fcaddr; void* lpwwpn; void* lpwwnn; void* wwpn; void* wwnn; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  NVMF_OPT_FCADDR 133 
#define  NVMF_OPT_LPWWNN 132 
#define  NVMF_OPT_LPWWPN 131 
#define  NVMF_OPT_ROLES 130 
#define  NVMF_OPT_WWNN 129 
#define  NVMF_OPT_WWPN 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  opt_tokens ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static int
FUNC8(struct fcloop_ctrl_options *opts,
		const char *buf)
{
	substring_t args[MAX_OPT_ARGS];
	char *options, *o, *p;
	int token, ret = 0;
	u64 token64;

	options = o = FUNC1(buf, GFP_KERNEL);
	if (!options)
		return -ENOMEM;

	while ((p = FUNC7(&o, ",\n")) != NULL) {
		if (!*p)
			continue;

		token = FUNC4(p, opt_tokens, args);
		opts->mask |= token;
		switch (token) {
		case NVMF_OPT_WWNN:
			if (FUNC5(args, &token64)) {
				ret = -EINVAL;
				goto out_free_options;
			}
			opts->wwnn = token64;
			break;
		case NVMF_OPT_WWPN:
			if (FUNC5(args, &token64)) {
				ret = -EINVAL;
				goto out_free_options;
			}
			opts->wwpn = token64;
			break;
		case NVMF_OPT_ROLES:
			if (FUNC3(args, &token)) {
				ret = -EINVAL;
				goto out_free_options;
			}
			opts->roles = token;
			break;
		case NVMF_OPT_FCADDR:
			if (FUNC2(args, &token)) {
				ret = -EINVAL;
				goto out_free_options;
			}
			opts->fcaddr = token;
			break;
		case NVMF_OPT_LPWWNN:
			if (FUNC5(args, &token64)) {
				ret = -EINVAL;
				goto out_free_options;
			}
			opts->lpwwnn = token64;
			break;
		case NVMF_OPT_LPWWPN:
			if (FUNC5(args, &token64)) {
				ret = -EINVAL;
				goto out_free_options;
			}
			opts->lpwwpn = token64;
			break;
		default:
			FUNC6("unknown parameter or missing value '%s'\n", p);
			ret = -EINVAL;
			goto out_free_options;
		}
	}

out_free_options:
	FUNC0(options);
	return ret;
}