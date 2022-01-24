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
struct key {int /*<<< orphan*/  sem; } ;
struct encrypted_key_payload {void* decrypted_data; } ;

/* Variables and functions */
 struct encrypted_key_payload* FUNC0 (struct key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC2(struct key *key)
{
	struct encrypted_key_payload *epayload = FUNC0(key);

	FUNC1(&key->sem);

	return epayload->decrypted_data;
}