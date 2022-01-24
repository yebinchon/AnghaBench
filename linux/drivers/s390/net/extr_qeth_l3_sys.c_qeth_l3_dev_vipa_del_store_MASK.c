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
struct qeth_card {int /*<<< orphan*/  conf_mutex; } ;
typedef  int ssize_t ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;

/* Variables and functions */
 int /*<<< orphan*/  QETH_IP_TYPE_VIPA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct qeth_card*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(const char *buf, size_t count,
			 struct qeth_card *card, enum qeth_prot_versions proto)
{
	u8 addr[16];
	int rc;

	FUNC0(&card->conf_mutex);
	rc = FUNC3(buf, proto, addr);
	if (!rc)
		rc = FUNC2(card, false, addr,
					      QETH_IP_TYPE_VIPA, proto);
	FUNC1(&card->conf_mutex);
	return rc ? rc : count;
}