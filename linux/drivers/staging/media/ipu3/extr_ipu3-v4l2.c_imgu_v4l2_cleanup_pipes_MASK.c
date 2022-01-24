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
 int /*<<< orphan*/  IMGU_NODE_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct imgu_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imgu_device*,int) ; 

__attribute__((used)) static void FUNC2(struct imgu_device *imgu, unsigned int pipe)
{
	int i;

	for (i = 0; i < pipe; i++) {
		FUNC0(imgu, i, IMGU_NODE_NUM);
		FUNC1(imgu, i);
	}
}