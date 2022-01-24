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
struct fscrypt_direct_key {int /*<<< orphan*/  dk_ctfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fscrypt_direct_key*) ; 

__attribute__((used)) static void FUNC2(struct fscrypt_direct_key *dk)
{
	if (dk) {
		FUNC0(dk->dk_ctfm);
		FUNC1(dk);
	}
}