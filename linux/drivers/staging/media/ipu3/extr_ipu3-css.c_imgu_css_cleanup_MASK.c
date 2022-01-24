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
struct imgu_css {int /*<<< orphan*/  xmem_sp_group_ptrs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int IMGU_MAX_PIPE_NUM ; 
 struct imgu_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imgu_css*) ; 
 int /*<<< orphan*/  FUNC2 (struct imgu_css*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct imgu_css*) ; 
 int /*<<< orphan*/  FUNC4 (struct imgu_device*,int /*<<< orphan*/ *) ; 

void FUNC5(struct imgu_css *css)
{
	struct imgu_device *imgu = FUNC0(css->dev);
	unsigned int pipe;

	FUNC3(css);
	for (pipe = 0; pipe < IMGU_MAX_PIPE_NUM; pipe++)
		FUNC2(css, pipe);
	FUNC4(imgu, &css->xmem_sp_group_ptrs);
	FUNC1(css);
}