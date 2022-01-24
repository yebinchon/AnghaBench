#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* next_device; } ;
typedef  TYPE_1__ SLMP_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  driver_version ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* synclinkmp_device_list ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	SLMP_INFO *info;

	FUNC1(m, "synclinkmp driver:%s\n", driver_version);

	info = synclinkmp_device_list;
	while( info ) {
		FUNC0(m, info);
		info = info->next_device;
	}
	return 0;
}