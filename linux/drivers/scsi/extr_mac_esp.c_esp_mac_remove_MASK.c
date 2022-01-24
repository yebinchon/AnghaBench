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
struct platform_device {size_t id; } ;
struct mac_esp_priv {struct esp* esp; } ;
struct esp {TYPE_1__* host; struct mac_esp_priv* command_block; } ;
struct TYPE_2__ {unsigned int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** esp_chips ; 
 int /*<<< orphan*/  esp_chips_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_esp_priv*) ; 
 struct mac_esp_priv* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *dev)
{
	struct mac_esp_priv *mep = FUNC2(dev);
	struct esp *esp = mep->esp;
	unsigned int irq = esp->host->irq;

	FUNC3(esp);

	FUNC5(&esp_chips_lock);
	esp_chips[dev->id] = NULL;
	if (esp_chips[!dev->id] == NULL) {
		FUNC6(&esp_chips_lock);
		FUNC0(irq, NULL);
	} else
		FUNC6(&esp_chips_lock);

	FUNC1(mep);

	FUNC1(esp->command_block);

	FUNC4(esp->host);

	return 0;
}