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
struct uart_sunzilog_port {int flags; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int SUNZILOG_FLAG_ESCC ; 
 struct uart_sunzilog_port* FUNC0 (struct uart_port*) ; 

__attribute__((used)) static const char *FUNC1(struct uart_port *port)
{
	struct uart_sunzilog_port *up = FUNC0(port);

	return (up->flags & SUNZILOG_FLAG_ESCC) ? "zs (ESCC)" : "zs";
}