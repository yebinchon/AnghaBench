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
struct qeth_dbf_entry {int /*<<< orphan*/  dbf_list; scalar_t__ dbf_info; int /*<<< orphan*/  dbf_name; } ;
struct qeth_card {scalar_t__ debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBF_NAME_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  debug_hex_ascii_view ; 
 scalar_t__ FUNC1 (char*,int,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct qeth_dbf_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_dbf_list ; 
 int /*<<< orphan*/  qeth_dbf_list_mutex ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct qeth_card *card, char *name)
{
	struct qeth_dbf_entry *new_entry;

	card->debug = FUNC1(name, 2, 1, 8);
	if (!card->debug) {
		FUNC0(SETUP, 2, "%s", "qcdbf");
		goto err;
	}
	if (FUNC2(card->debug, &debug_hex_ascii_view))
		goto err_dbg;
	new_entry = FUNC4(sizeof(struct qeth_dbf_entry), GFP_KERNEL);
	if (!new_entry)
		goto err_dbg;
	FUNC8(new_entry->dbf_name, name, DBF_NAME_LEN);
	new_entry->dbf_info = card->debug;
	FUNC6(&qeth_dbf_list_mutex);
	FUNC5(&new_entry->dbf_list, &qeth_dbf_list);
	FUNC7(&qeth_dbf_list_mutex);

	return 0;

err_dbg:
	FUNC3(card->debug);
err:
	return -ENOMEM;
}