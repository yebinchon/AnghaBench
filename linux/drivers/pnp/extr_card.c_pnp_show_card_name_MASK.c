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
struct pnp_card {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 struct pnp_card* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dmdev,
				  struct device_attribute *attr, char *buf)
{
	char *str = buf;
	struct pnp_card *card = FUNC1(dmdev);

	str += FUNC0(str, "%s\n", card->name);
	return (str - buf);
}