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
struct spi_master {int dummy; } ;
struct gb_connection {int dummy; } ;

/* Variables and functions */
 struct spi_master* FUNC0 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_master*) ; 

void FUNC2(struct gb_connection *connection)
{
	struct spi_master *master = FUNC0(connection);

	FUNC1(master);
}