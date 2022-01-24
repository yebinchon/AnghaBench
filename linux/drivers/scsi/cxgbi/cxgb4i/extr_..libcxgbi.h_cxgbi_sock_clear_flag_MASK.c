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
struct cxgbi_sock {int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
typedef  enum cxgbi_sock_flags { ____Placeholder_cxgbi_sock_flags } cxgbi_sock_flags ;

/* Variables and functions */
 int CXGBI_DBG_SOCK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct cxgbi_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct cxgbi_sock *csk,
					enum cxgbi_sock_flags flag)
{
	FUNC0(flag, &csk->flags);
	FUNC1(1 << CXGBI_DBG_SOCK,
		"csk 0x%p,%u,0x%lx, bit %d.\n",
		csk, csk->state, csk->flags, flag);
}