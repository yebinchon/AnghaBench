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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const**) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 char const** ucsi_cmd_strs ; 

const char *FUNC2(u64 raw_cmd)
{
	u8 cmd = raw_cmd & FUNC1(7, 0);

	return ucsi_cmd_strs[(cmd >= FUNC0(ucsi_cmd_strs)) ? 0 : cmd];
}