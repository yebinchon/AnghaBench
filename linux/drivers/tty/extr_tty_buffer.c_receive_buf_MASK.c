#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_port {TYPE_1__* client_ops; } ;
struct tty_buffer {int flags; int /*<<< orphan*/  read; } ;
struct TYPE_2__ {int (* receive_buf ) (struct tty_port*,unsigned char*,char*,int) ;} ;

/* Variables and functions */
 int TTYB_NORMAL ; 
 unsigned char* FUNC0 (struct tty_buffer*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct tty_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct tty_port*,unsigned char*,char*,int) ; 

__attribute__((used)) static int
FUNC4(struct tty_port *port, struct tty_buffer *head, int count)
{
	unsigned char *p = FUNC0(head, head->read);
	char	      *f = NULL;
	int n;

	if (~head->flags & TTYB_NORMAL)
		f = FUNC1(head, head->read);

	n = port->client_ops->receive_buf(port, p, f, count);
	if (n > 0)
		FUNC2(p, 0, n);
	return n;
}