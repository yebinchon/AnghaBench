#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvmf_ctrl_options {unsigned int mask; } ;
struct TYPE_3__ {unsigned int token; int /*<<< orphan*/  pattern; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* opt_tokens ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct nvmf_ctrl_options *opts,
		unsigned int required_opts)
{
	if ((opts->mask & required_opts) != required_opts) {
		int i;

		for (i = 0; i < FUNC0(opt_tokens); i++) {
			if ((opt_tokens[i].token & required_opts) &&
			    !(opt_tokens[i].token & opts->mask)) {
				FUNC1("missing parameter '%s'\n",
					opt_tokens[i].pattern);
			}
		}

		return -EINVAL;
	}

	return 0;
}