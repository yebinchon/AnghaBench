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
struct TYPE_2__ {int /*<<< orphan*/  sin_port; } ;
struct cxgbi_sock {TYPE_1__ daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct cxgbi_sock *csk, char *buf)
{
	int len;

	FUNC0(csk);
	len = FUNC3(buf, "%hu\n", FUNC2(csk->daddr.sin_port));
	FUNC1(csk);

	return len;
}