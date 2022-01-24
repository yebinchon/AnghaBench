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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct rproc {struct device dev; } ;
struct firmware {scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct elf32_phdr {scalar_t__ p_paddr; scalar_t__ p_memsz; scalar_t__ p_filesz; scalar_t__ p_offset; scalar_t__ p_type; } ;
struct elf32_hdr {int e_phoff; int e_phnum; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PT_LOAD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC4 (struct rproc*,scalar_t__,scalar_t__) ; 

int FUNC5(struct rproc *rproc, const struct firmware *fw)
{
	struct device *dev = &rproc->dev;
	struct elf32_hdr *ehdr;
	struct elf32_phdr *phdr;
	int i, ret = 0;
	const u8 *elf_data = fw->data;

	ehdr = (struct elf32_hdr *)elf_data;
	phdr = (struct elf32_phdr *)(elf_data + ehdr->e_phoff);

	/* go through the available ELF segments */
	for (i = 0; i < ehdr->e_phnum; i++, phdr++) {
		u32 da = phdr->p_paddr;
		u32 memsz = phdr->p_memsz;
		u32 filesz = phdr->p_filesz;
		u32 offset = phdr->p_offset;
		void *ptr;

		if (phdr->p_type != PT_LOAD)
			continue;

		FUNC0(dev, "phdr: type %d da 0x%x memsz 0x%x filesz 0x%x\n",
			phdr->p_type, da, memsz, filesz);

		if (filesz > memsz) {
			FUNC1(dev, "bad phdr filesz 0x%x memsz 0x%x\n",
				filesz, memsz);
			ret = -EINVAL;
			break;
		}

		if (offset + filesz > fw->size) {
			FUNC1(dev, "truncated fw: need 0x%x avail 0x%zx\n",
				offset + filesz, fw->size);
			ret = -EINVAL;
			break;
		}

		/* grab the kernel address for this device address */
		ptr = FUNC4(rproc, da, memsz);
		if (!ptr) {
			FUNC1(dev, "bad phdr da 0x%x mem 0x%x\n", da, memsz);
			ret = -EINVAL;
			break;
		}

		/* put the segment where the remote processor expects it */
		if (phdr->p_filesz)
			FUNC2(ptr, elf_data + phdr->p_offset, filesz);

		/*
		 * Zero out remaining memory for this segment.
		 *
		 * This isn't strictly required since dma_alloc_coherent already
		 * did this for us. albeit harmless, we may consider removing
		 * this.
		 */
		if (memsz > filesz)
			FUNC3(ptr + filesz, 0, memsz - filesz);
	}

	return ret;
}