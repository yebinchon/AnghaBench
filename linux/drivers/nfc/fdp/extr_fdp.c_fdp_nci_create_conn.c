
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
struct fdp_nci_info {int ndev; } ;
struct core_conn_create_dest_spec_params {int length; int type; } ;
typedef int param ;


 int FDP_PATCH_CONN_DEST ;
 int FDP_PATCH_CONN_PARAM_TYPE ;
 int nci_core_conn_create (int ,int ,int,int,struct core_conn_create_dest_spec_params*) ;
 int nci_get_conn_info_by_dest_type_params (struct nci_dev*,int ,int *) ;
 struct fdp_nci_info* nci_get_drvdata (struct nci_dev*) ;

__attribute__((used)) static int fdp_nci_create_conn(struct nci_dev *ndev)
{
 struct fdp_nci_info *info = nci_get_drvdata(ndev);
 struct core_conn_create_dest_spec_params param;
 int r;


 param.type = FDP_PATCH_CONN_PARAM_TYPE;
 param.length = 0x00;

 r = nci_core_conn_create(info->ndev, FDP_PATCH_CONN_DEST, 1,
     sizeof(param), &param);
 if (r)
  return r;

 return nci_get_conn_info_by_dest_type_params(ndev,
           FDP_PATCH_CONN_DEST, ((void*)0));
}
