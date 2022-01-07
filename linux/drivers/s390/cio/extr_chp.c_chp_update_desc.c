
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_path {int desc_fmt3; int chpid; int desc_fmt1; int desc; } ;


 int chsc_determine_fmt0_channel_path_desc (int ,int *) ;
 int chsc_determine_fmt1_channel_path_desc (int ,int *) ;
 int chsc_determine_fmt3_channel_path_desc (int ,int *) ;
 int chsc_get_channel_measurement_chars (struct channel_path*) ;

int chp_update_desc(struct channel_path *chp)
{
 int rc;

 rc = chsc_determine_fmt0_channel_path_desc(chp->chpid, &chp->desc);
 if (rc)
  return rc;





 chsc_determine_fmt1_channel_path_desc(chp->chpid, &chp->desc_fmt1);
 chsc_determine_fmt3_channel_path_desc(chp->chpid, &chp->desc_fmt3);
 chsc_get_channel_measurement_chars(chp);

 return 0;
}
