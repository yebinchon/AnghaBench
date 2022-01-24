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
struct mutex {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 

__attribute__((used)) static int FUNC3(struct mutex *mutex, unsigned nonblock)
{
	return nonblock
		? FUNC0(FUNC2(mutex)) ? 0 : -EAGAIN
		: FUNC1(mutex);
}