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
struct qeth_card {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IPA_INBOUND_CHECKSUM ; 
 int /*<<< orphan*/  IPA_INBOUND_CHECKSUM_V6 ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  QETH_PROT_IPV6 ; 
 scalar_t__ FUNC0 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qeth_card*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qeth_card *card, bool on)
{
	int rc_ipv4 = (on) ? -EOPNOTSUPP : 0;
	int rc_ipv6;

	if (FUNC0(card, IPA_INBOUND_CHECKSUM))
		rc_ipv4 = FUNC2(card, on, IPA_INBOUND_CHECKSUM,
					    QETH_PROT_IPV4);
	if (!FUNC1(card, IPA_INBOUND_CHECKSUM_V6))
		/* no/one Offload Assist available, so the rc is trivial */
		return rc_ipv4;

	rc_ipv6 = FUNC2(card, on, IPA_INBOUND_CHECKSUM,
				    QETH_PROT_IPV6);

	if (on)
		/* enable: success if any Assist is active */
		return (rc_ipv6) ? rc_ipv4 : 0;

	/* disable: failure if any Assist is still active */
	return (rc_ipv6) ? rc_ipv6 : rc_ipv4;
}