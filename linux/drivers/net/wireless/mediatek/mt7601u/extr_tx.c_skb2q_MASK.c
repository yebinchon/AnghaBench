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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int MT_TXQ_BE ; 
 int MT_TXQ_PSD ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static u8 FUNC4(struct sk_buff *skb)
{
	int qid = FUNC2(skb);

	if (FUNC0(qid >= MT_TXQ_PSD)) {
		qid = MT_TXQ_BE;
		FUNC3(skb, qid);
	}

	return FUNC1(qid);
}