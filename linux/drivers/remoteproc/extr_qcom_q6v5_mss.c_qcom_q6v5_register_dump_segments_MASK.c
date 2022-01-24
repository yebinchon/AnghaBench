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
struct rproc {struct q6v5* priv; } ;
struct q6v5 {int /*<<< orphan*/  dump_complete_mask; int /*<<< orphan*/  hexagon_mdt_image; int /*<<< orphan*/  dev; } ;
struct firmware {scalar_t__ data; } ;
struct elf32_phdr {int /*<<< orphan*/  p_memsz; int /*<<< orphan*/  p_paddr; } ;
struct elf32_hdr {unsigned long e_phnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct elf32_phdr const*) ; 
 int /*<<< orphan*/  qcom_q6v5_dump_segment ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC6(struct rproc *rproc,
					    const struct firmware *mba_fw)
{
	const struct firmware *fw;
	const struct elf32_phdr *phdrs;
	const struct elf32_phdr *phdr;
	const struct elf32_hdr *ehdr;
	struct q6v5 *qproc = rproc->priv;
	unsigned long i;
	int ret;

	ret = FUNC4(&fw, qproc->hexagon_mdt_image, qproc->dev);
	if (ret < 0) {
		FUNC1(qproc->dev, "unable to load %s\n",
			qproc->hexagon_mdt_image);
		return ret;
	}

	ehdr = (struct elf32_hdr *)fw->data;
	phdrs = (struct elf32_phdr *)(ehdr + 1);
	qproc->dump_complete_mask = 0;

	for (i = 0; i < ehdr->e_phnum; i++) {
		phdr = &phdrs[i];

		if (!FUNC2(phdr))
			continue;

		ret = FUNC5(rproc, phdr->p_paddr,
							phdr->p_memsz,
							qcom_q6v5_dump_segment,
							(void *)i);
		if (ret)
			break;

		qproc->dump_complete_mask |= FUNC0(i);
	}

	FUNC3(fw);
	return ret;
}