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
struct TCP_Server_Info {int dummy; } ;
typedef  int /*<<< orphan*/  NEGOTIATE_RSP ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline int
FUNC1(struct TCP_Server_Info *server, NEGOTIATE_RSP *pSMBr)
{
	FUNC0(VFS, "mount failed, cifs module not built with CIFS_WEAK_PW_HASH support\n");
	return -EOPNOTSUPP;
}