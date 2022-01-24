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
struct slgt_info {struct slgt_info* next_device; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 struct slgt_info* slgt_device_list ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	struct slgt_info *info;

	FUNC1(m, "synclink_gt driver\n");

	info = slgt_device_list;
	while( info ) {
		FUNC0(m, info);
		info = info->next_device;
	}
	return 0;
}