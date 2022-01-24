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
struct xencons_interface {int out_cons; int out_prod; char* out; } ;
struct xencons_info {struct xencons_interface* intf; } ;
typedef  int XENCONS_RING_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct xencons_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct xencons_info *xencons,
		const char *data, int len)
{
	XENCONS_RING_IDX cons, prod;
	struct xencons_interface *intf = xencons->intf;
	int sent = 0;

	cons = intf->out_cons;
	prod = intf->out_prod;
	FUNC2();			/* update queue values before going on */
	FUNC0((prod - cons) > sizeof(intf->out));

	while ((sent < len) && ((prod - cons) < sizeof(intf->out)))
		intf->out[FUNC1(prod++, intf->out)] = data[sent++];

	FUNC4();			/* write ring before updating pointer */
	intf->out_prod = prod;

	if (sent)
		FUNC3(xencons);
	return sent;
}