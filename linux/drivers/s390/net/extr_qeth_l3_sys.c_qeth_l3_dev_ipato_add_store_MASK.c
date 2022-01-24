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
typedef  int /*<<< orphan*/  u8 ;
struct qeth_ipato_entry {int proto; int mask_bits; int /*<<< orphan*/  addr; } ;
struct qeth_card {int /*<<< orphan*/  conf_mutex; } ;
typedef  int ssize_t ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_ipato_entry*) ; 
 struct qeth_ipato_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct qeth_card*,struct qeth_ipato_entry*) ; 
 int FUNC6 (char const*,int,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static ssize_t FUNC7(const char *buf, size_t count,
			 struct qeth_card *card, enum qeth_prot_versions proto)
{
	struct qeth_ipato_entry *ipatoe;
	u8 addr[16];
	int mask_bits;
	int rc = 0;

	FUNC3(&card->conf_mutex);
	rc = FUNC6(buf, proto, addr, &mask_bits);
	if (rc)
		goto out;

	ipatoe = FUNC1(sizeof(struct qeth_ipato_entry), GFP_KERNEL);
	if (!ipatoe) {
		rc = -ENOMEM;
		goto out;
	}
	ipatoe->proto = proto;
	FUNC2(ipatoe->addr, addr, (proto == QETH_PROT_IPV4)? 4:16);
	ipatoe->mask_bits = mask_bits;

	rc = FUNC5(card, ipatoe);
	if (rc)
		FUNC0(ipatoe);
out:
	FUNC4(&card->conf_mutex);
	return rc ? rc : count;
}