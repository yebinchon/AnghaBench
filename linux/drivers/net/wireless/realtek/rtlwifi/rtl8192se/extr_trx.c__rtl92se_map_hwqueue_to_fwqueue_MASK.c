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
typedef  int u8 ;
struct sk_buff {int priority; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int QSLT_BEACON ; 
 int QSLT_HIGH ; 
 int QSLT_MGNT ; 
 int QSLT_VO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC6(struct sk_buff *skb,	u8 skb_queue)
{
	__le16 fc = FUNC4(skb);

	if (FUNC5(FUNC0(fc)))
		return QSLT_BEACON;
	if (FUNC2(fc) || FUNC1(fc))
		return QSLT_MGNT;
	if (FUNC3(fc))
		return QSLT_HIGH;

	/* Kernel commit 1bf4bbb4024dcdab changed EAPOL packets to use
	 * queue V0 at priority 7; however, the RTL8192SE appears to have
	 * that queue at priority 6
	 */
	if (skb->priority == 7)
		return QSLT_VO;
	return skb->priority;
}