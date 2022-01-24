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
struct seq_file {int dummy; } ;
struct TYPE_2__ {struct fscrypt_master_key** data; } ;
struct key {char* description; TYPE_1__ payload; } ;
struct fscrypt_master_key {int /*<<< orphan*/  mk_secret; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct key const*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(const struct key *key, struct seq_file *m)
{
	FUNC2(m, key->description);

	if (FUNC1(key)) {
		const struct fscrypt_master_key *mk = key->payload.data[0];

		if (!FUNC0(&mk->mk_secret))
			FUNC2(m, ": secret removed");
	}
}