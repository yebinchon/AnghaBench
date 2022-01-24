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
union fscrypt_policy {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union fscrypt_policy const*) ; 
 int /*<<< orphan*/  FUNC1 (union fscrypt_policy const*,union fscrypt_policy const*,int /*<<< orphan*/ ) ; 

bool FUNC2(const union fscrypt_policy *policy1,
			    const union fscrypt_policy *policy2)
{
	if (policy1->version != policy2->version)
		return false;

	return !FUNC1(policy1, policy2, FUNC0(policy1));
}