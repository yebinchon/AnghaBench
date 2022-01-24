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
struct imgu_css {int dummy; } ;

/* Variables and functions */
 unsigned int IMGU_MAX_PIPE_NUM ; 
 int FUNC0 (struct imgu_css*,unsigned int) ; 

bool FUNC1(struct imgu_css *css)
{
	unsigned int pipe;
	bool ret = 0;

	for (pipe = 0; pipe < IMGU_MAX_PIPE_NUM; pipe++)
		ret &= FUNC0(css, pipe);

	return ret;
}