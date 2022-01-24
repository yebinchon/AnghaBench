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
struct imgu_device {int dummy; } ;
struct imgu_css_pipe {int /*<<< orphan*/ ** abi_buffers; int /*<<< orphan*/  sp_ddr_ptrs; int /*<<< orphan*/ ** xmem_isp_stage_ptrs; int /*<<< orphan*/ ** xmem_sp_stage_ptrs; } ;
struct imgu_css {struct imgu_css_pipe* pipes; int /*<<< orphan*/  dev; } ;
struct imgu_abi_sp_stage {int dummy; } ;
struct imgu_abi_isp_stage {int dummy; } ;
struct imgu_abi_ddr_address_map {int dummy; } ;
struct imgu_abi_buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IMGU_ABI_ISP_DDR_WORD_BYTES ; 
 unsigned int IMGU_ABI_MAX_STAGES ; 
 unsigned int IPU3_CSS_PIPE_ID_NUM ; 
 unsigned int IPU3_CSS_QUEUES ; 
 struct imgu_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct imgu_css*,unsigned int) ; 
 scalar_t__ FUNC4 (struct imgu_css*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct imgu_device*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct imgu_css *css, unsigned int pipe)
{
	struct imgu_device *imgu = FUNC2(css->dev);
	struct imgu_css_pipe *css_pipe = &css->pipes[pipe];
	unsigned int p, q, i;

	/* Allocate and map common structures with imgu hardware */
	for (p = 0; p < IPU3_CSS_PIPE_ID_NUM; p++)
		for (i = 0; i < IMGU_ABI_MAX_STAGES; i++) {
			if (!FUNC5(imgu,
					       &css_pipe->
					       xmem_sp_stage_ptrs[p][i],
					       sizeof(struct imgu_abi_sp_stage)))
				return -ENOMEM;
			if (!FUNC5(imgu,
					       &css_pipe->
					       xmem_isp_stage_ptrs[p][i],
					       sizeof(struct imgu_abi_isp_stage)))
				return -ENOMEM;
		}

	if (!FUNC5(imgu, &css_pipe->sp_ddr_ptrs,
			       FUNC0(sizeof(struct imgu_abi_ddr_address_map),
				     IMGU_ABI_ISP_DDR_WORD_BYTES)))
		return -ENOMEM;

	for (q = 0; q < IPU3_CSS_QUEUES; q++) {
		unsigned int abi_buf_num = FUNC1(css_pipe->abi_buffers[q]);

		for (i = 0; i < abi_buf_num; i++)
			if (!FUNC5(imgu,
					       &css_pipe->abi_buffers[q][i],
					       sizeof(struct imgu_abi_buffer)))
				return -ENOMEM;
	}

	if (FUNC4(css, pipe)) {
		FUNC3(css, pipe);
		return -ENOMEM;
	}

	return 0;
}