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
typedef  union recv_frame {int dummy; } recv_frame ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _adapter*,union recv_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,union recv_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,union recv_frame*) ; 

__attribute__((used)) static void FUNC3(struct _adapter *padapter,
			     union recv_frame *prframe)
{
	FUNC2(padapter, prframe);
	FUNC1(padapter, prframe);
	FUNC0(padapter,  prframe);
}