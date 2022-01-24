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
typedef  struct aspeed_sig_expr aspeed_sig_expr ;
struct aspeed_pin_desc {struct aspeed_sig_expr*** prios; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4(const struct aspeed_pin_desc *pdesc,
				   const char *(*get)(
					   const struct aspeed_sig_expr *))
{
	char *found = NULL;
	size_t len = 0;
	const struct aspeed_sig_expr ***prios, **funcs, *expr;

	prios = pdesc->prios;

	while ((funcs = *prios)) {
		while ((expr = *funcs)) {
			const char *str = get(expr);
			size_t delta = FUNC3(str) + 2;
			char *expanded;

			expanded = FUNC1(found, len + delta + 1, GFP_KERNEL);
			if (!expanded) {
				FUNC0(found);
				return expanded;
			}

			found = expanded;
			found[len] = '\0';
			len += delta;

			FUNC2(found, str);
			FUNC2(found, ", ");

			funcs++;
		}
		prios++;
	}

	if (len < 2) {
		FUNC0(found);
		return NULL;
	}

	found[len - 2] = '\0';

	return found;
}