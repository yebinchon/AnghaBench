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
typedef  int u32 ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct sh_sci_spi {int dummy; } ;

/* Variables and functions */
 int PIN_RXD ; 
 int /*<<< orphan*/  FUNC0 (struct sh_sci_spi*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sh_sci_spi* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC3(struct spi_device *dev)
{
	struct sh_sci_spi *sp = FUNC2(dev->master);

	return (FUNC1(FUNC0(sp)) & PIN_RXD) ? 1 : 0;
}