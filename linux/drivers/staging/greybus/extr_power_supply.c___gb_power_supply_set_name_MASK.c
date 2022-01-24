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
struct power_supply {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct power_supply* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct power_supply*) ; 
 int FUNC2 (char*,size_t,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(char *init_name, char *name, size_t len)
{
	unsigned int i = 0;
	int ret = 0;
	struct power_supply *psy;

	if (!FUNC4(init_name))
		init_name = "gb_power_supply";
	FUNC3(name, init_name, len);

	while ((ret < len) && (psy = FUNC0(name))) {
		FUNC1(psy);

		ret = FUNC2(name, len, "%s_%u", init_name, ++i);
	}
	if (ret >= len)
		return -ENOMEM;
	return i;
}