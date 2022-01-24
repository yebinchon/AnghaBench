#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct key {int /*<<< orphan*/  description; } ;
struct afs_cell {struct key* anonymous_key; TYPE_1__* net; } ;
struct TYPE_2__ {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOKEY ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct key* FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  key_type_rxrpc ; 
 struct key* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct key *FUNC8(struct afs_cell *cell)
{
	struct key *key;

	FUNC3("{%x}", FUNC6(cell->anonymous_key));

	FUNC2("key %s", cell->anonymous_key->description);
	key = FUNC7(&key_type_rxrpc, cell->anonymous_key->description,
			      cell->net->net, NULL);
	if (FUNC0(key)) {
		if (FUNC1(key) != -ENOKEY) {
			FUNC4(" = %ld", FUNC1(key));
			return key;
		}

		/* act as anonymous user */
		FUNC4(" = {%x} [anon]", FUNC6(cell->anonymous_key));
		return FUNC5(cell->anonymous_key);
	} else {
		/* act as authorised user */
		FUNC4(" = {%x} [auth]", FUNC6(key));
		return key;
	}
}