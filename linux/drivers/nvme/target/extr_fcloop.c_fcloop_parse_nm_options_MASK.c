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
typedef  int u64 ;
typedef  int /*<<< orphan*/  substring_t ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  NVMF_OPT_WWNN 129 
#define  NVMF_OPT_WWPN 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  opt_tokens ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static int
FUNC6(struct device *dev, u64 *nname, u64 *pname,
		const char *buf)
{
	substring_t args[MAX_OPT_ARGS];
	char *options, *o, *p;
	int token, ret = 0;
	u64 token64;

	*nname = -1;
	*pname = -1;

	options = o = FUNC1(buf, GFP_KERNEL);
	if (!options)
		return -ENOMEM;

	while ((p = FUNC5(&o, ",\n")) != NULL) {
		if (!*p)
			continue;

		token = FUNC2(p, opt_tokens, args);
		switch (token) {
		case NVMF_OPT_WWNN:
			if (FUNC3(args, &token64)) {
				ret = -EINVAL;
				goto out_free_options;
			}
			*nname = token64;
			break;
		case NVMF_OPT_WWPN:
			if (FUNC3(args, &token64)) {
				ret = -EINVAL;
				goto out_free_options;
			}
			*pname = token64;
			break;
		default:
			FUNC4("unknown parameter or missing value '%s'\n", p);
			ret = -EINVAL;
			goto out_free_options;
		}
	}

out_free_options:
	FUNC0(options);

	if (!ret) {
		if (*nname == -1)
			return -EINVAL;
		if (*pname == -1)
			return -EINVAL;
	}

	return ret;
}