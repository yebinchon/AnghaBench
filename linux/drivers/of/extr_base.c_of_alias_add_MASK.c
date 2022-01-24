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
struct alias_prop {int id; scalar_t__* stem; int /*<<< orphan*/  alias; int /*<<< orphan*/  link; struct device_node* np; } ;

/* Variables and functions */
 int /*<<< orphan*/  aliases_lookup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__*,int,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,int) ; 

__attribute__((used)) static void FUNC3(struct alias_prop *ap, struct device_node *np,
			 int id, const char *stem, int stem_len)
{
	ap->np = np;
	ap->id = id;
	FUNC2(ap->stem, stem, stem_len);
	ap->stem[stem_len] = 0;
	FUNC0(&ap->link, &aliases_lookup);
	FUNC1("adding DT alias:%s: stem=%s id=%i node=%pOF\n",
		 ap->alias, ap->stem, ap->id, np);
}