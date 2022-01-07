
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBF_EVENT (int,char*) ;
 int TAPE_DBF_AREA ;
 int ccw_driver_register (int *) ;
 int debug_register (char*,int,int,int) ;
 int debug_register_view (int ,int *) ;
 int debug_set_level (int ,int) ;
 int debug_sprintf_view ;
 int tape_34xx_driver ;

__attribute__((used)) static int
tape_34xx_init (void)
{
 int rc;

 TAPE_DBF_AREA = debug_register ( "tape_34xx", 2, 2, 4*sizeof(long));
 debug_register_view(TAPE_DBF_AREA, &debug_sprintf_view);




 DBF_EVENT(3, "34xx init\n");

 rc = ccw_driver_register(&tape_34xx_driver);
 if (rc)
  DBF_EVENT(3, "34xx init failed\n");
 else
  DBF_EVENT(3, "34xx registered\n");
 return rc;
}
