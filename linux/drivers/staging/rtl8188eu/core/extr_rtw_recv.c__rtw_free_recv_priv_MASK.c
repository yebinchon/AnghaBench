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
struct recv_priv {int /*<<< orphan*/  pallocated_frame_buf; struct adapter* adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct recv_priv *precvpriv)
{
	struct adapter	*padapter = precvpriv->adapter;

	FUNC0(padapter);

	FUNC2(precvpriv->pallocated_frame_buf);

	FUNC1(padapter);
}