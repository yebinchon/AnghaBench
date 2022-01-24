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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct armada_thermal_priv {char* zone_name; } ;

/* Variables and functions */
 int THERMAL_NAME_LENGTH ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char*,char*) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static void FUNC5(struct platform_device *pdev,
				 struct armada_thermal_priv *priv)
{
	const char *name = FUNC0(&pdev->dev);
	char *insane_char;

	if (FUNC1(name) > THERMAL_NAME_LENGTH) {
		/*
		 * When inside a system controller, the device name has the
		 * form: f06f8000.system-controller:ap-thermal so stripping
		 * after the ':' should give us a shorter but meaningful name.
		 */
		name = FUNC4(name, ':');
		if (!name)
			name = "armada_thermal";
		else
			name++;
	}

	/* Save the name locally */
	FUNC2(priv->zone_name, name, THERMAL_NAME_LENGTH - 1);
	priv->zone_name[THERMAL_NAME_LENGTH - 1] = '\0';

	/* Then check there are no '-' or hwmon core will complain */
	do {
		insane_char = FUNC3(priv->zone_name, "-");
		if (insane_char)
			*insane_char = '_';
	} while (insane_char);
}