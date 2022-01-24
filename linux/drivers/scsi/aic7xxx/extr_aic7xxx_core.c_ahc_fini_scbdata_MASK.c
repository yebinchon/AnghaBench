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
struct sg_map_node {int /*<<< orphan*/  sg_dmamap; int /*<<< orphan*/  sg_vaddr; } ;
struct scb_data {int init_level; struct sg_map_node* scbarray; int /*<<< orphan*/  hscb_dmat; int /*<<< orphan*/  hscb_dmamap; int /*<<< orphan*/  hscbs; int /*<<< orphan*/  sense_dmat; int /*<<< orphan*/  sense_dmamap; int /*<<< orphan*/  sense; int /*<<< orphan*/  sg_dmat; int /*<<< orphan*/  sg_maps; } ;
struct ahc_softc {struct scb_data* scb_data; } ;

/* Variables and functions */
 struct sg_map_node* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sg_map_node*) ; 
 int /*<<< orphan*/  links ; 

__attribute__((used)) static void
FUNC7(struct ahc_softc *ahc)
{
	struct scb_data *scb_data;

	scb_data = ahc->scb_data;
	if (scb_data == NULL)
		return;

	switch (scb_data->init_level) {
	default:
	case 7:
	{
		struct sg_map_node *sg_map;

		while ((sg_map = FUNC0(&scb_data->sg_maps))!= NULL) {
			FUNC1(&scb_data->sg_maps, links);
			FUNC4(ahc, scb_data->sg_dmat,
					  sg_map->sg_dmamap);
			FUNC5(ahc, scb_data->sg_dmat,
					sg_map->sg_vaddr,
					sg_map->sg_dmamap);
			FUNC6(sg_map);
		}
		FUNC2(ahc, scb_data->sg_dmat);
	}
		/* fall through */
	case 6:
		FUNC4(ahc, scb_data->sense_dmat,
				  scb_data->sense_dmamap);
		/* fall through */
	case 5:
		FUNC5(ahc, scb_data->sense_dmat, scb_data->sense,
				scb_data->sense_dmamap);
		FUNC3(ahc, scb_data->sense_dmat,
				   scb_data->sense_dmamap);
		/* fall through */
	case 4:
		FUNC2(ahc, scb_data->sense_dmat);
		/* fall through */
	case 3:
		FUNC4(ahc, scb_data->hscb_dmat,
				  scb_data->hscb_dmamap);
		/* fall through */
	case 2:
		FUNC5(ahc, scb_data->hscb_dmat, scb_data->hscbs,
				scb_data->hscb_dmamap);
		FUNC3(ahc, scb_data->hscb_dmat,
				   scb_data->hscb_dmamap);
		/* fall through */
	case 1:
		FUNC2(ahc, scb_data->hscb_dmat);
		break;
	case 0:
		break;
	}
	if (scb_data->scbarray != NULL)
		FUNC6(scb_data->scbarray);
}