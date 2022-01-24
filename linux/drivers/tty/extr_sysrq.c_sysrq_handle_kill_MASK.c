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

/* Variables and functions */
 int /*<<< orphan*/  CONSOLE_LOGLEVEL_DEBUG ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  console_loglevel ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(int key)
{
	FUNC0(SIGKILL);
	console_loglevel = CONSOLE_LOGLEVEL_DEBUG;
}