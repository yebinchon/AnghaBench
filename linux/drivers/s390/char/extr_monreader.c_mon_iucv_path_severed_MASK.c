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
typedef  int /*<<< orphan*/  u8 ;
struct mon_private {int /*<<< orphan*/  iucv_severed; } ;
struct iucv_path {struct mon_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iucv_path*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mon_conn_wait_queue ; 
 int /*<<< orphan*/  mon_read_wait_queue ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iucv_path *path, u8 *ipuser)
{
	struct mon_private *monpriv = path->private;

	FUNC2("z/VM *MONITOR system service disconnected with rc=%i\n",
	       ipuser[0]);
	FUNC1(path, NULL);
	FUNC0(&monpriv->iucv_severed, 1);
	FUNC3(&mon_conn_wait_queue);
	FUNC4(&mon_read_wait_queue);
}