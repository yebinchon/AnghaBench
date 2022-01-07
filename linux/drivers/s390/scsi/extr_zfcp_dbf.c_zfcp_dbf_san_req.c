
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct zfcp_fsf_req {int req_id; struct zfcp_fsf_ct_els* data; TYPE_1__* adapter; } ;
struct zfcp_fsf_ct_els {int req; } ;
struct zfcp_dbf {int san; } ;
struct TYPE_2__ {struct zfcp_dbf* dbf; } ;


 int ZFCP_DBF_SAN_LEVEL ;
 int ZFCP_DBF_SAN_REQ ;
 int debug_level_enabled (int ,int ) ;
 scalar_t__ unlikely (int) ;
 int zfcp_dbf_san (char*,struct zfcp_dbf*,char*,int ,int ,scalar_t__,int ,int ,scalar_t__) ;
 scalar_t__ zfcp_qdio_real_bytes (int ) ;

void zfcp_dbf_san_req(char *tag, struct zfcp_fsf_req *fsf, u32 d_id)
{
 struct zfcp_dbf *dbf = fsf->adapter->dbf;
 struct zfcp_fsf_ct_els *ct_els = fsf->data;
 u16 length;

 if (unlikely(!debug_level_enabled(dbf->san, ZFCP_DBF_SAN_LEVEL)))
  return;

 length = (u16)zfcp_qdio_real_bytes(ct_els->req);
 zfcp_dbf_san(tag, dbf, "san_req", ct_els->req, ZFCP_DBF_SAN_REQ,
       length, fsf->req_id, d_id, length);
}
