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
struct recv_buf {scalar_t__ purb; scalar_t__ pskb; } ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct _adapter *padapter,
				    struct recv_buf *precvbuf)
{
	if (precvbuf->pskb)
		FUNC0(precvbuf->pskb);
	if (precvbuf->purb) {
		FUNC2(precvbuf->purb);
		FUNC1(precvbuf->purb);
	}
}