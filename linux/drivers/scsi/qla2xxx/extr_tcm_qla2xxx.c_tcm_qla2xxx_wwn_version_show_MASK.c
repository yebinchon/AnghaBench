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
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {char* sysname; char* machine; char* release; } ;

/* Variables and functions */
 char* QLA2XXX_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*,char*,char*) ; 
 TYPE_1__* FUNC1 () ; 

__attribute__((used)) static ssize_t FUNC2(struct config_item *item,
		char *page)
{
	return FUNC0(page,
	    "TCM QLOGIC QLA2XXX NPIV capable fabric module %s on %s/%s on %s\n",
	    QLA2XXX_VERSION, FUNC1()->sysname,
	    FUNC1()->machine, FUNC1()->release);
}