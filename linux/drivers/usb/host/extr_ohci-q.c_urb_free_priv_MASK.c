#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int length; int /*<<< orphan*/  pending; struct td** td; } ;
typedef  TYPE_1__ urb_priv_t ;
struct td {int dummy; } ;
struct ohci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ohci_hcd*,struct td*) ; 

__attribute__((used)) static void FUNC3 (struct ohci_hcd *hc, urb_priv_t *urb_priv)
{
	int		last = urb_priv->length - 1;

	if (last >= 0) {
		int		i;
		struct td	*td;

		for (i = 0; i <= last; i++) {
			td = urb_priv->td [i];
			if (td)
				FUNC2 (hc, td);
		}
	}

	FUNC1 (&urb_priv->pending);
	FUNC0 (urb_priv);
}