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
struct key_type {int dummy; } ;
struct key {int dummy; } ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EKEYREVOKED ; 
 int /*<<< orphan*/  ENOKEY ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct key* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct key_type*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct key*,int) ; 

__attribute__((used)) static struct key *FUNC7(struct key *keyring,
					  struct key_type *type,
					  const char *description)
{
	/*
	 * We need to mark the keyring reference as "possessed" so that we
	 * acquire permission to search it, via the KEY_POS_SEARCH permission.
	 */
	key_ref_t keyref = FUNC6(keyring, true /* possessed */);

	keyref = FUNC5(keyref, type, description, false);
	if (FUNC2(keyref)) {
		if (FUNC3(keyref) == -EAGAIN || /* not found */
		    FUNC3(keyref) == -EKEYREVOKED) /* recently invalidated */
			keyref = FUNC1(-ENOKEY);
		return FUNC0(keyref);
	}
	return FUNC4(keyref);
}