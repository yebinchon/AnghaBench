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
struct typec_port {int /*<<< orphan*/  mux; int /*<<< orphan*/  sw; int /*<<< orphan*/  mode_ids; int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct typec_port*) ; 
 struct typec_port* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  typec_index_ida ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct typec_port *port = FUNC3(dev);

	FUNC1(&typec_index_ida, port->id);
	FUNC0(&port->mode_ids);
	FUNC5(port->sw);
	FUNC4(port->mux);
	FUNC2(port);
}