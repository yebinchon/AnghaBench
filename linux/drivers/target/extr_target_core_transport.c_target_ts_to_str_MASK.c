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
typedef  int u32 ;

/* Variables and functions */
 int CMD_T_ABORTED ; 
 int CMD_T_ACTIVE ; 
 int CMD_T_COMPLETE ; 
 int CMD_T_FABRIC_STOP ; 
 int CMD_T_SENT ; 
 int CMD_T_STOP ; 
 int /*<<< orphan*/  FUNC0 (char**,char*) ; 

__attribute__((used)) static char *FUNC1(u32 ts)
{
	char *str = NULL;

	if (ts & CMD_T_ABORTED)
		FUNC0(&str, "aborted");
	if (ts & CMD_T_ACTIVE)
		FUNC0(&str, "active");
	if (ts & CMD_T_COMPLETE)
		FUNC0(&str, "complete");
	if (ts & CMD_T_SENT)
		FUNC0(&str, "sent");
	if (ts & CMD_T_STOP)
		FUNC0(&str, "stop");
	if (ts & CMD_T_FABRIC_STOP)
		FUNC0(&str, "fabric_stop");

	return str;
}