
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ short_data; } ;
struct TYPE_3__ {scalar_t__ short_data; } ;
struct ba_record {int valid; TYPE_2__ start_seq_ctrl; scalar_t__ dialog_token; scalar_t__ timeout_value; TYPE_1__ param_set; } ;



void ResetBaEntry(struct ba_record *pBA)
{
 pBA->valid = 0;
 pBA->param_set.short_data = 0;
 pBA->timeout_value = 0;
 pBA->dialog_token = 0;
 pBA->start_seq_ctrl.short_data = 0;
}
