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
struct urb {scalar_t__ num_sgs; int /*<<< orphan*/ * sg; struct urb** transfer_buffer; struct urb** setup_packet; } ;
struct stub_priv {int num_urbs; struct urb** urbs; int /*<<< orphan*/ * sgl; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urb**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct stub_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stub_priv_cache ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 

void FUNC6(struct stub_priv *priv)
{
	struct urb *urb;
	int i;

	for (i = 0; i < priv->num_urbs; i++) {
		urb = priv->urbs[i];

		if (!urb)
			return;

		FUNC0(urb->setup_packet);
		urb->setup_packet = NULL;


		if (urb->transfer_buffer && !priv->sgl) {
			FUNC0(urb->transfer_buffer);
			urb->transfer_buffer = NULL;
		}

		if (urb->num_sgs) {
			FUNC4(urb->sg);
			urb->sg = NULL;
			urb->num_sgs = 0;
		}

		FUNC5(urb);
	}
	if (!FUNC3(&priv->list))
		FUNC2(&priv->list);
	if (priv->sgl)
		FUNC4(priv->sgl);
	FUNC0(priv->urbs);
	FUNC1(stub_priv_cache, priv);
}