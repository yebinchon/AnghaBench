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
struct node_descriptor {scalar_t__ validity; int byte0; int params; int tag; int /*<<< orphan*/  seq; int /*<<< orphan*/  plant; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  model; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ ND_VALIDITY_VALID ; 
 scalar_t__ NODEID_LEN ; 
 scalar_t__ PARAMS_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(char *params, char *id, struct node_descriptor *nd)
{
	FUNC0(params, 0, PARAMS_LEN);
	FUNC0(id, 0, NODEID_LEN);

	if (nd->validity != ND_VALIDITY_VALID) {
		FUNC4(params, "n/a", PARAMS_LEN - 1);
		FUNC4(id, "n/a", NODEID_LEN - 1);
		return;
	}

	/* PARAMS=xx,xxxxxx */
	FUNC1(params, PARAMS_LEN, "%02x,%06x", nd->byte0, nd->params);
	/* NODEID=tttttt/mdl,mmm.ppssssssssssss,xxxx */
	id = FUNC3(id, nd->type, sizeof(nd->type), '/');
	id = FUNC3(id, nd->model, sizeof(nd->model), ',');
	id = FUNC3(id, nd->manufacturer, sizeof(nd->manufacturer), '.');
	id = FUNC3(id, nd->plant, sizeof(nd->plant), 0);
	id = FUNC3(id, nd->seq, sizeof(nd->seq), ',');
	FUNC2(id, "%04X", nd->tag);
}