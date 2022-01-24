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
struct imgu_css_pipe {int /*<<< orphan*/  sp_ddr_ptrs; int /*<<< orphan*/ ** xmem_isp_stage_ptrs; int /*<<< orphan*/ ** xmem_sp_stage_ptrs; int /*<<< orphan*/ ** abi_buffers; } ;
struct imgu_css {struct imgu_css_pipe* pipes; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int IMGU_ABI_MAX_STAGES ; 
 unsigned int IPU3_CSS_PIPE_ID_NUM ; 
 unsigned int IPU3_CSS_QUEUES ; 
 struct imgu_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct imgu_css*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct imgu_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct imgu_css *css, unsigned int pipe)
{
	struct imgu_device *imgu = FUNC1(css->dev);
	struct imgu_css_pipe *css_pipe = &css->pipes[pipe];
	unsigned int p, q, i, abi_buf_num;

	FUNC2(css, pipe);

	for (q = 0; q < IPU3_CSS_QUEUES; q++) {
		abi_buf_num = FUNC0(css_pipe->abi_buffers[q]);
		for (i = 0; i < abi_buf_num; i++)
			FUNC3(imgu, &css_pipe->abi_buffers[q][i]);
	}

	for (p = 0; p < IPU3_CSS_PIPE_ID_NUM; p++)
		for (i = 0; i < IMGU_ABI_MAX_STAGES; i++) {
			FUNC3(imgu,
					 &css_pipe->xmem_sp_stage_ptrs[p][i]);
			FUNC3(imgu,
					 &css_pipe->xmem_isp_stage_ptrs[p][i]);
		}

	FUNC3(imgu, &css_pipe->sp_ddr_ptrs);
}