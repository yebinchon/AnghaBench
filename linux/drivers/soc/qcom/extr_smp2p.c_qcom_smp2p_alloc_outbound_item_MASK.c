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
struct smp2p_smem_item {unsigned int remote_pid; int version; scalar_t__ valid_entries; int /*<<< orphan*/  total_entries; int /*<<< orphan*/  local_pid; int /*<<< orphan*/  magic; } ;
struct qcom_smp2p {unsigned int* smem_items; unsigned int remote_pid; struct smp2p_smem_item* out; int /*<<< orphan*/  local_pid; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct smp2p_smem_item*) ; 
 int FUNC1 (struct smp2p_smem_item*) ; 
 int /*<<< orphan*/  SMP2P_MAGIC ; 
 int /*<<< orphan*/  SMP2P_MAX_ENTRY ; 
 size_t SMP2P_OUTBOUND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct smp2p_smem_item*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (unsigned int,unsigned int,int) ; 
 struct smp2p_smem_item* FUNC5 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct qcom_smp2p*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct qcom_smp2p *smp2p)
{
	struct smp2p_smem_item *out;
	unsigned smem_id = smp2p->smem_items[SMP2P_OUTBOUND];
	unsigned pid = smp2p->remote_pid;
	int ret;

	ret = FUNC4(pid, smem_id, sizeof(*out));
	if (ret < 0 && ret != -EEXIST) {
		if (ret != -EPROBE_DEFER)
			FUNC2(smp2p->dev,
				"unable to allocate local smp2p item\n");
		return ret;
	}

	out = FUNC5(pid, smem_id, NULL);
	if (FUNC0(out)) {
		FUNC2(smp2p->dev, "Unable to acquire local smp2p item\n");
		return FUNC1(out);
	}

	FUNC3(out, 0, sizeof(*out));
	out->magic = SMP2P_MAGIC;
	out->local_pid = smp2p->local_pid;
	out->remote_pid = smp2p->remote_pid;
	out->total_entries = SMP2P_MAX_ENTRY;
	out->valid_entries = 0;

	/*
	 * Make sure the rest of the header is written before we validate the
	 * item by writing a valid version number.
	 */
	FUNC7();
	out->version = 1;

	FUNC6(smp2p);

	smp2p->out = out;

	return 0;
}