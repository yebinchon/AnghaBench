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
struct qeth_ipaddr {int dummy; } ;
struct qeth_card {int /*<<< orphan*/  ip_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct qeth_card*,struct qeth_ipaddr*) ; 
 int FUNC3 (struct qeth_card*,struct qeth_ipaddr*) ; 

__attribute__((used)) static int FUNC4(struct qeth_card *card, struct qeth_ipaddr *addr,
			     bool add)
{
	int rc;

	FUNC0(&card->ip_lock);
	rc = add ? FUNC2(card, addr) : FUNC3(card, addr);
	FUNC1(&card->ip_lock);

	return rc;
}