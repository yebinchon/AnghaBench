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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int iobase; int /*<<< orphan*/  irq; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct irq_data {int dummy; } ;
struct fintek_8250 {int base_port; int key; int index; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  IO_ADDR1 ; 
 int /*<<< orphan*/  IO_ADDR2 ; 
 int /*<<< orphan*/  LDN ; 
 scalar_t__ FUNC1 (struct fintek_8250*) ; 
 scalar_t__ FUNC2 (int const,int const) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 scalar_t__ FUNC4 (struct fintek_8250*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*,struct fintek_8250*) ; 
 int /*<<< orphan*/  FUNC6 (struct fintek_8250*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fintek_8250*) ; 
 struct irq_data* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct irq_data*) ; 
 int FUNC10 (struct fintek_8250*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fintek_8250*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct fintek_8250 *pdata,
					struct uart_8250_port *uart)
{
	static const u16 addr[] = {0x4e, 0x2e};
	static const u8 keys[] = {0x77, 0xa0, 0x87, 0x67};
	struct irq_data *irq_data;
	bool level_mode = false;
	int i, j, k, min, max;

	for (i = 0; i < FUNC0(addr); i++) {
		for (j = 0; j < FUNC0(keys); j++) {
			pdata->base_port = addr[i];
			pdata->key = keys[j];

			if (FUNC2(addr[i], keys[j]))
				continue;
			if (FUNC1(pdata) ||
			    FUNC4(pdata, &min, &max)) {
				FUNC3(addr[i]);
				continue;
			}

			for (k = min; k < max; k++) {
				u16 aux;

				FUNC11(pdata, LDN, k);
				aux = FUNC10(pdata, IO_ADDR1);
				aux |= FUNC10(pdata, IO_ADDR2) << 8;
				if (aux != uart->port.iobase)
					continue;

				pdata->index = k;

				irq_data = FUNC8(uart->port.irq);
				if (irq_data)
					level_mode =
						FUNC9(irq_data);

				FUNC6(pdata, level_mode);
				FUNC7(pdata);
				FUNC5(uart, pdata);

				FUNC3(addr[i]);

				return 0;
			}

			FUNC3(addr[i]);
		}
	}

	return -ENODEV;
}