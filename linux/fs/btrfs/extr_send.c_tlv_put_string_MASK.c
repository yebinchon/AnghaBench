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
typedef  int /*<<< orphan*/  u16 ;
struct send_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (struct send_ctx*,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC2(struct send_ctx *sctx, u16 attr,
			  const char *str, int len)
{
	if (len == -1)
		len = FUNC0(str);
	return FUNC1(sctx, attr, str, len);
}