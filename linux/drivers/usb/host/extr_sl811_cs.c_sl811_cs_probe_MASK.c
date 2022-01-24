#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC2(struct pcmcia_device *link)
{
	local_info_t *local;

	local = FUNC0(sizeof(local_info_t), GFP_KERNEL);
	if (!local)
		return -ENOMEM;
	local->p_dev = link;
	link->priv = local;

	return FUNC1(link);
}