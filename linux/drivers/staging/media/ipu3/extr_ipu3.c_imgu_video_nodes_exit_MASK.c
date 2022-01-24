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

/* Variables and functions */
 int IMGU_MAX_PIPE_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct imgu_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct imgu_device*) ; 

__attribute__((used)) static void FUNC2(struct imgu_device *imgu)
{
	int i;

	for (i = 0; i < IMGU_MAX_PIPE_NUM; i++)
		FUNC0(imgu, i);

	FUNC1(imgu);
}