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
struct seq_file {struct hisi_sas_cq* private; } ;
struct hisi_sas_cq {int dummy; } ;

/* Variables and functions */
 int HISI_SAS_QUEUE_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int,struct hisi_sas_cq*) ; 

__attribute__((used)) static int FUNC1(struct seq_file *s, void *p)
{
	struct hisi_sas_cq *cq = s->private;
	int slot;

	for (slot = 0; slot < HISI_SAS_QUEUE_SLOTS; slot++) {
		FUNC0(s, slot, cq);
	}
	return 0;
}