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
struct i1480 {int /*<<< orphan*/  dev; } ;
struct fw_hdr {int dummy; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_hdr*) ; 
 int FUNC3 (struct i1480*,struct fw_hdr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i1480*,struct fw_hdr*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct i1480*) ; 
 int FUNC6 (struct i1480*) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC9(struct i1480 *i1480, const char *fw_name,
		    const char *fw_tag)
{
	int result;
	const struct firmware *fw;
	struct fw_hdr *fw_hdrs;

	result = FUNC8(&fw, fw_name, i1480->dev);
	if (result < 0)	/* Up to caller to complain on -ENOENT */
		goto out;
	result = FUNC3(i1480, &fw_hdrs, fw->data, fw->size);
	if (result < 0) {
		FUNC0(i1480->dev, "%s fw '%s': failed to parse firmware "
			"file: %d\n", fw_tag, fw_name, result);
		goto out_release;
	}
	result = FUNC6(i1480);
	if (result < 0)
		goto out_hdrs_release;
	result = FUNC4(i1480, fw_hdrs, fw_name, fw_tag);
	FUNC5(i1480);
out_hdrs_release:
	if (result >= 0)
		FUNC1(i1480->dev, "%s fw '%s': uploaded\n", fw_tag, fw_name);
	else
		FUNC0(i1480->dev, "%s fw '%s': failed to upload (%d), "
			"power cycle device\n", fw_tag, fw_name, result);
	FUNC2(fw_hdrs);
out_release:
	FUNC7(fw);
out:
	return result;
}