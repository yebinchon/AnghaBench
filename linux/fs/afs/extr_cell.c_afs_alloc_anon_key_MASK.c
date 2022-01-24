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
struct key {int dummy; } ;
struct afs_cell {char* name; struct key* anonymous_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_MAXCELLNAME ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 struct key* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 

__attribute__((used)) static int FUNC7(struct afs_cell *cell)
{
	struct key *key;
	char keyname[4 + AFS_MAXCELLNAME + 1], *cp, *dp;

	/* Create a key to represent an anonymous user. */
	FUNC4(keyname, "afs@", 4);
	dp = keyname + 4;
	cp = cell->name;
	do {
		*dp++ = FUNC6(*cp);
	} while (*cp++);

	key = FUNC5(keyname);
	if (FUNC0(key))
		return FUNC1(key);

	cell->anonymous_key = key;

	FUNC2("anon key %p{%x}",
	       cell->anonymous_key, FUNC3(cell->anonymous_key));
	return 0;
}