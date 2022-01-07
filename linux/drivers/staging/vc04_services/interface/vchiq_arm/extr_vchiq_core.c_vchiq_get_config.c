
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_config {int version_min; int version; int max_services; int max_outstanding_bulks; void* bulk_threshold; void* max_msg_size; } ;


 void* VCHIQ_MAX_MSG_SIZE ;
 int VCHIQ_MAX_SERVICES ;
 int VCHIQ_NUM_SERVICE_BULKS ;
 int VCHIQ_VERSION ;
 int VCHIQ_VERSION_MIN ;

void vchiq_get_config(struct vchiq_config *config)
{
 config->max_msg_size = VCHIQ_MAX_MSG_SIZE;
 config->bulk_threshold = VCHIQ_MAX_MSG_SIZE;
 config->max_outstanding_bulks = VCHIQ_NUM_SERVICE_BULKS;
 config->max_services = VCHIQ_MAX_SERVICES;
 config->version = VCHIQ_VERSION;
 config->version_min = VCHIQ_VERSION_MIN;
}
