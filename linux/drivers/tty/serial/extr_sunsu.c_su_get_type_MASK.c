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
struct device_node {int dummy; } ;
typedef  enum su_type { ____Placeholder_su_type } su_type ;

/* Variables and functions */
 int SU_PORT_KBD ; 
 int SU_PORT_MS ; 
 int SU_PORT_PORT ; 
 struct device_node* FUNC0 (char const*) ; 
 char* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static enum su_type FUNC3(struct device_node *dp)
{
	struct device_node *ap = FUNC0("/aliases");
	enum su_type rc = SU_PORT_PORT;

	if (ap) {
		const char *keyb = FUNC1(ap, "keyboard", NULL);
		const char *ms = FUNC1(ap, "mouse", NULL);
		struct device_node *match;

		if (keyb) {
			match = FUNC0(keyb);

			/*
			 * The pointer is used as an identifier not
			 * as a pointer, we can drop the refcount on
			 * the of__node immediately after getting it.
			 */
			FUNC2(match);

			if (dp == match) {
				rc = SU_PORT_KBD;
				goto out;
			}
		}
		if (ms) {
			match = FUNC0(ms);

			FUNC2(match);

			if (dp == match) {
				rc = SU_PORT_MS;
				goto out;
			}
		}
	}

out:
	FUNC2(ap);
	return rc;
}