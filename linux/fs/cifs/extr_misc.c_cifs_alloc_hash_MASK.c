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
struct shash_desc {int dummy; } ;
struct TYPE_2__ {struct crypto_shash* tfm; } ;
struct sdesc {TYPE_1__ shash; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct crypto_shash* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_shash*) ; 
 int FUNC5 (struct crypto_shash*) ; 
 struct sdesc* FUNC6 (size_t,int /*<<< orphan*/ ) ; 

int
FUNC7(const char *name,
		struct crypto_shash **shash, struct sdesc **sdesc)
{
	int rc = 0;
	size_t size;

	if (*sdesc != NULL)
		return 0;

	*shash = FUNC3(name, 0, 0);
	if (FUNC0(*shash)) {
		FUNC2(VFS, "could not allocate crypto %s\n", name);
		rc = FUNC1(*shash);
		*shash = NULL;
		*sdesc = NULL;
		return rc;
	}

	size = sizeof(struct shash_desc) + FUNC5(*shash);
	*sdesc = FUNC6(size, GFP_KERNEL);
	if (*sdesc == NULL) {
		FUNC2(VFS, "no memory left to allocate crypto %s\n", name);
		FUNC4(*shash);
		*shash = NULL;
		return -ENOMEM;
	}

	(*sdesc)->shash.tfm = *shash;
	return 0;
}