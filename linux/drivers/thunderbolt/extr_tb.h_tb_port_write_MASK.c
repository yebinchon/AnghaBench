#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tb_port {int /*<<< orphan*/  port; TYPE_2__* sw; } ;
typedef  enum tb_cfg_space { ____Placeholder_tb_cfg_space } tb_cfg_space ;
struct TYPE_4__ {TYPE_1__* tb; scalar_t__ is_unplugged; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static inline int FUNC2(struct tb_port *port, const void *buffer,
				enum tb_cfg_space space, u32 offset, u32 length)
{
	if (port->sw->is_unplugged)
		return -ENODEV;
	return FUNC0(port->sw->tb->ctl,
			    buffer,
			    FUNC1(port->sw),
			    port->port,
			    space,
			    offset,
			    length);
}