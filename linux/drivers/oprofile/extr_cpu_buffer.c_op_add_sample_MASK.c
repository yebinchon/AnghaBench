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
struct oprofile_cpu_buffer {int dummy; } ;
struct op_sample {unsigned long eip; unsigned long event; } ;
struct op_entry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct op_entry*) ; 
 struct op_sample* FUNC1 (struct op_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(struct oprofile_cpu_buffer *cpu_buf,
	      unsigned long pc, unsigned long event)
{
	struct op_entry entry;
	struct op_sample *sample;

	sample = FUNC1(&entry, 0);
	if (!sample)
		return -ENOMEM;

	sample->eip = pc;
	sample->event = event;

	return FUNC0(&entry);
}