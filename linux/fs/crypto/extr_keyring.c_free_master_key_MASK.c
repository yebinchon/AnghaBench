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
struct fscrypt_master_key {int /*<<< orphan*/  mk_users; int /*<<< orphan*/ * mk_mode_keys; int /*<<< orphan*/  mk_secret; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fscrypt_master_key*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct fscrypt_master_key *mk)
{
	size_t i;

	FUNC4(&mk->mk_secret);

	for (i = 0; i < FUNC0(mk->mk_mode_keys); i++)
		FUNC1(mk->mk_mode_keys[i]);

	FUNC2(mk->mk_users);
	FUNC3(mk);
}