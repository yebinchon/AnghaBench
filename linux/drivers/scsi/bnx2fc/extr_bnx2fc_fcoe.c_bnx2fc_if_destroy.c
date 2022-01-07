
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int host; } ;


 int bnx2fc_clean_rx_queue (struct fc_lport*) ;
 int fc_exch_mgr_free (struct fc_lport*) ;
 int fc_lport_free_stats (struct fc_lport*) ;
 int fc_remove_host (int ) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;

__attribute__((used)) static void bnx2fc_if_destroy(struct fc_lport *lport)
{


 bnx2fc_clean_rx_queue(lport);


 fc_remove_host(lport->host);
 scsi_remove_host(lport->host);





 fc_exch_mgr_free(lport);


 fc_lport_free_stats(lport);


 scsi_host_put(lport->host);
}
