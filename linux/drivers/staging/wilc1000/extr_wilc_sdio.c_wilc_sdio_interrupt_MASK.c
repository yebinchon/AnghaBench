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
struct sdio_func {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sdio_func *func)
{
	FUNC2(func);
	FUNC3(FUNC1(func));
	FUNC0(func);
}