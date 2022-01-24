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
struct des_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  ctx ;

/* Variables and functions */
 int /*<<< orphan*/  DES_KEY_SIZE ; 
 int ENOENT ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct des_ctx*,unsigned char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct des_ctx*,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ fips_enabled ; 
 int /*<<< orphan*/  FUNC3 (struct des_ctx*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*) ; 

__attribute__((used)) static int
FUNC5(unsigned char *out, const unsigned char *in, unsigned char *key)
{
	unsigned char key2[8];
	struct des_ctx ctx;

	FUNC4(key, key2);

	if (fips_enabled) {
		FUNC0(VFS, "FIPS compliance enabled: DES not permitted\n");
		return -ENOENT;
	}

	FUNC2(&ctx, key2, DES_KEY_SIZE);
	FUNC1(&ctx, out, in);
	FUNC3(&ctx, sizeof(ctx));

	return 0;
}