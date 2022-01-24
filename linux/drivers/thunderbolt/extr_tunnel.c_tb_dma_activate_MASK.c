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
typedef  int /*<<< orphan*/  u32 ;
struct tb_tunnel {struct tb_port* src_port; } ;
struct tb_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb_port*) ; 
 int FUNC1 (struct tb_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct tb_tunnel *tunnel, bool active)
{
	struct tb_port *nhi = tunnel->src_port;
	u32 credits;

	credits = active ? FUNC0(nhi) : 0;
	return FUNC1(nhi, credits);
}