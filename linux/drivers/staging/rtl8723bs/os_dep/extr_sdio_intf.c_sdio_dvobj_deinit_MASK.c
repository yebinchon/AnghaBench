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
struct sdio_func {int dummy; } ;
struct dvobj_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvobj_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvobj_priv*) ; 
 struct dvobj_priv* FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sdio_func *func)
{
	struct dvobj_priv *dvobj = FUNC2(func);

	FUNC3(func, NULL);
	if (dvobj) {
		FUNC1(dvobj);
		FUNC0(dvobj);
	}
	return;
}