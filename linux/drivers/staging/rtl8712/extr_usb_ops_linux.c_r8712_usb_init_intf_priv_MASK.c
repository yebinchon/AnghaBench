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
typedef  int /*<<< orphan*/  uint ;
struct intf_priv {int /*<<< orphan*/  io_retevt_comp; int /*<<< orphan*/  piorw_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint FUNC2(struct intf_priv *pintfpriv)
{
	pintfpriv->piorw_urb = FUNC1(0, GFP_ATOMIC);
	if (!pintfpriv->piorw_urb)
		return _FAIL;
	FUNC0(&pintfpriv->io_retevt_comp);
	return _SUCCESS;
}