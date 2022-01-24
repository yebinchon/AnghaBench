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
struct urb {struct c67x00_urb_priv* hcpriv; } ;
struct c67x00_urb_priv {int status; int /*<<< orphan*/  hep_node; } ;
struct c67x00_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c67x00_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct urb*) ; 

__attribute__((used)) static void
FUNC7(struct c67x00_hcd *c67x00, struct urb *urb, int status)
{
	struct c67x00_urb_priv *urbp;

	if (!urb)
		return;

	urbp = urb->hcpriv;
	urbp->status = status;

	FUNC2(&urbp->hep_node);

	FUNC1(c67x00, urb);
	FUNC6(FUNC0(c67x00), urb);
	FUNC4(&c67x00->lock);
	FUNC5(FUNC0(c67x00), urb, urbp->status);
	FUNC3(&c67x00->lock);
}