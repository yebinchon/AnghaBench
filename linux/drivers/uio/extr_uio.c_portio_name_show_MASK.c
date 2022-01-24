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
struct uio_port {char* name; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static ssize_t FUNC2(struct uio_port *port, char *buf)
{
	if (FUNC1(!port->name))
		port->name = "";

	return FUNC0(buf, "%s\n", port->name);
}