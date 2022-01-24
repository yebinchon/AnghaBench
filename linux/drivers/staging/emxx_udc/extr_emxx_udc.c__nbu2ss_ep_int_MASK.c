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
typedef  int /*<<< orphan*/  u32 ;
struct nbu2ss_udc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nbu2ss_udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nbu2ss_udc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct nbu2ss_udc *udc, u32 epnum)
{
	if (epnum == 0)
		FUNC0(udc);
	else
		FUNC1(udc, epnum);
}