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
struct kiocb_priv {scalar_t__ req; struct ep_data* epdata; } ;
struct kiocb {struct kiocb_priv* private; } ;
struct ep_data {scalar_t__ ep; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct kiocb *iocb)
{
	struct kiocb_priv	*priv = iocb->private;
	struct ep_data		*epdata;
	int			value;

	FUNC1();
	epdata = priv->epdata;
	// spin_lock(&epdata->dev->lock);
	if (FUNC0(epdata && epdata->ep && priv->req))
		value = FUNC3 (epdata->ep, priv->req);
	else
		value = -EINVAL;
	// spin_unlock(&epdata->dev->lock);
	FUNC2();

	return value;
}