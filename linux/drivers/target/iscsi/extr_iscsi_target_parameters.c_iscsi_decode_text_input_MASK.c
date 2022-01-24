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
typedef  int u8 ;
typedef  int u32 ;
struct iscsi_param_list {int dummy; } ;
struct iscsi_param {int dummy; } ;
struct iscsi_conn {struct iscsi_param_list* param_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct iscsi_param*) ; 
 int PHASE_SECURITY ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_param*) ; 
 scalar_t__ FUNC3 (char*,char*,struct iscsi_param_list*) ; 
 scalar_t__ FUNC4 (struct iscsi_param*,char*,struct iscsi_conn*) ; 
 scalar_t__ FUNC5 (char*) ; 
 struct iscsi_param* FUNC6 (char*,int,int,struct iscsi_param_list*) ; 
 scalar_t__ FUNC7 (struct iscsi_param*,char*) ; 
 scalar_t__ FUNC8 (struct iscsi_param*,char*) ; 
 scalar_t__ FUNC9 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 scalar_t__ FUNC15 (char*) ; 

int FUNC16(
	u8 phase,
	u8 sender,
	char *textbuf,
	u32 length,
	struct iscsi_conn *conn)
{
	struct iscsi_param_list *param_list = conn->param_list;
	char *tmpbuf, *start = NULL, *end = NULL;

	tmpbuf = FUNC11(length + 1, GFP_KERNEL);
	if (!tmpbuf) {
		FUNC14("Unable to allocate %u + 1 bytes for tmpbuf.\n", length);
		return -ENOMEM;
	}

	FUNC12(tmpbuf, textbuf, length);
	tmpbuf[length] = '\0';
	start = tmpbuf;
	end = (start + length);

	while (start < end) {
		char *key, *value;
		struct iscsi_param *param;

		if (FUNC9(start, &key, &value) < 0)
			goto free_buffer;

		FUNC13("Got key: %s=%s\n", key, value);

		if (phase & PHASE_SECURITY) {
			if (FUNC5(key) > 0) {
				FUNC10(tmpbuf);
				return 1;
			}
		}

		param = FUNC6(key, phase, sender, param_list);
		if (!param) {
			if (FUNC3(key, value,
							     param_list) < 0)
				goto free_buffer;

			start += FUNC15(key) + FUNC15(value) + 2;
			continue;
		}
		if (FUNC8(param, value) < 0)
			goto free_buffer;

		start += FUNC15(key) + FUNC15(value) + 2;

		if (FUNC0(param)) {
			if (FUNC7(param, value) < 0)
				goto free_buffer;

			FUNC2(param);
		} else {
			if (FUNC4(param, value, conn) < 0)
				goto free_buffer;

			FUNC1(param);
		}
	}

	FUNC10(tmpbuf);
	return 0;

free_buffer:
	FUNC10(tmpbuf);
	return -1;
}