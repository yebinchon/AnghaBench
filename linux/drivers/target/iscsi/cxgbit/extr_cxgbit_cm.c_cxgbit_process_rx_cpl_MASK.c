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
struct sk_buff {int dummy; } ;
struct cxgbit_sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxgbit_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbit_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbit_sock*) ; 

__attribute__((used)) static void FUNC3(struct cxgbit_sock *csk, struct sk_buff *skb)
{
	FUNC1(csk);
	FUNC0(csk, skb);
	FUNC2(csk);
}