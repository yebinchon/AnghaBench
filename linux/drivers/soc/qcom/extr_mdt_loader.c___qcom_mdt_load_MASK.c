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
struct firmware {scalar_t__ data; scalar_t__ size; } ;
struct elf32_phdr {int p_flags; scalar_t__ p_paddr; size_t p_memsz; size_t p_filesz; scalar_t__ p_offset; } ;
struct elf32_hdr {int e_phnum; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ PHYS_ADDR_MAX ; 
 int FUNC2 (void*) ; 
 int QCOM_MDT_RELOCATABLE ; 
 int /*<<< orphan*/  SZ_4K ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct elf32_phdr const*) ; 
 int /*<<< orphan*/  FUNC7 (void*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC9 (struct firmware const*,size_t*) ; 
 int FUNC10 (int,void*,size_t) ; 
 int FUNC11 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct firmware const*) ; 
 int FUNC13 (struct firmware const**,char*,struct device*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,char*,int) ; 
 size_t FUNC15 (char const*) ; 

__attribute__((used)) static int FUNC16(struct device *dev, const struct firmware *fw,
			   const char *firmware, int pas_id, void *mem_region,
			   phys_addr_t mem_phys, size_t mem_size,
			   phys_addr_t *reloc_base, bool pas_init)
{
	const struct elf32_phdr *phdrs;
	const struct elf32_phdr *phdr;
	const struct elf32_hdr *ehdr;
	const struct firmware *seg_fw;
	phys_addr_t mem_reloc;
	phys_addr_t min_addr = PHYS_ADDR_MAX;
	phys_addr_t max_addr = 0;
	size_t metadata_len;
	size_t fw_name_len;
	ssize_t offset;
	void *metadata;
	char *fw_name;
	bool relocate = false;
	void *ptr;
	int ret = 0;
	int i;

	if (!fw || !mem_region || !mem_phys || !mem_size)
		return -EINVAL;

	ehdr = (struct elf32_hdr *)fw->data;
	phdrs = (struct elf32_phdr *)(ehdr + 1);

	fw_name_len = FUNC15(firmware);
	if (fw_name_len <= 4)
		return -EINVAL;

	fw_name = FUNC5(firmware, GFP_KERNEL);
	if (!fw_name)
		return -ENOMEM;

	if (pas_init) {
		metadata = FUNC9(fw, &metadata_len);
		if (FUNC1(metadata)) {
			ret = FUNC2(metadata);
			goto out;
		}

		ret = FUNC10(pas_id, metadata, metadata_len);

		FUNC4(metadata);
		if (ret) {
			FUNC3(dev, "invalid firmware metadata\n");
			goto out;
		}
	}

	for (i = 0; i < ehdr->e_phnum; i++) {
		phdr = &phdrs[i];

		if (!FUNC6(phdr))
			continue;

		if (phdr->p_flags & QCOM_MDT_RELOCATABLE)
			relocate = true;

		if (phdr->p_paddr < min_addr)
			min_addr = phdr->p_paddr;

		if (phdr->p_paddr + phdr->p_memsz > max_addr)
			max_addr = FUNC0(phdr->p_paddr + phdr->p_memsz, SZ_4K);
	}

	if (relocate) {
		if (pas_init) {
			ret = FUNC11(pas_id, mem_phys,
						     max_addr - min_addr);
			if (ret) {
				FUNC3(dev, "unable to setup relocation\n");
				goto out;
			}
		}

		/*
		 * The image is relocatable, so offset each segment based on
		 * the lowest segment address.
		 */
		mem_reloc = min_addr;
	} else {
		/*
		 * Image is not relocatable, so offset each segment based on
		 * the allocated physical chunk of memory.
		 */
		mem_reloc = mem_phys;
	}

	for (i = 0; i < ehdr->e_phnum; i++) {
		phdr = &phdrs[i];

		if (!FUNC6(phdr))
			continue;

		offset = phdr->p_paddr - mem_reloc;
		if (offset < 0 || offset + phdr->p_memsz > mem_size) {
			FUNC3(dev, "segment outside memory range\n");
			ret = -EINVAL;
			break;
		}

		ptr = mem_region + offset;

		if (phdr->p_filesz && phdr->p_offset < fw->size) {
			/* Firmware is large enough to be non-split */
			if (phdr->p_offset + phdr->p_filesz > fw->size) {
				FUNC3(dev,
					"failed to load segment %d from truncated file %s\n",
					i, firmware);
				ret = -EINVAL;
				break;
			}

			FUNC7(ptr, fw->data + phdr->p_offset, phdr->p_filesz);
		} else if (phdr->p_filesz) {
			/* Firmware not large enough, load split-out segments */
			FUNC14(fw_name + fw_name_len - 3, "b%02d", i);
			ret = FUNC13(&seg_fw, fw_name, dev,
							ptr, phdr->p_filesz);
			if (ret) {
				FUNC3(dev, "failed to load %s\n", fw_name);
				break;
			}

			FUNC12(seg_fw);
		}

		if (phdr->p_memsz > phdr->p_filesz)
			FUNC8(ptr + phdr->p_filesz, 0, phdr->p_memsz - phdr->p_filesz);
	}

	if (reloc_base)
		*reloc_base = mem_reloc;

out:
	FUNC4(fw_name);

	return ret;
}