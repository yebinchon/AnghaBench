
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct megasas_instance {struct fusion_context* ctrl_context; } ;
struct megasas_cmd_fusion {TYPE_2__* io_request; } ;
struct fusion_context {struct LD_STREAM_DETECT** stream_detect_by_ld; } ;
struct STREAM_DETECT {scalar_t__ next_seq_lba; scalar_t__ is_read; } ;
struct LD_STREAM_DETECT {size_t mru_bit_map; struct STREAM_DETECT* stream_track; } ;
struct IO_REQUEST_INFO {size_t ldTgtId; scalar_t__ ldStartBlock; scalar_t__ isRead; scalar_t__ numBlocks; } ;
struct TYPE_3__ {int raid_context_g35; } ;
struct TYPE_4__ {TYPE_1__ RaidContext; } ;


 int BITS_PER_INDEX_STREAM ;
 int MAX_STREAMS_TRACKED ;
 int SET_STREAM_DETECTED (int ) ;
 size_t STREAM_MASK ;
 size_t ZERO_LAST_STREAM ;

__attribute__((used)) static void megasas_stream_detect(struct megasas_instance *instance,
      struct megasas_cmd_fusion *cmd,
      struct IO_REQUEST_INFO *io_info)
{
 struct fusion_context *fusion = instance->ctrl_context;
 u32 device_id = io_info->ldTgtId;
 struct LD_STREAM_DETECT *current_ld_sd
  = fusion->stream_detect_by_ld[device_id];
 u32 *track_stream = &current_ld_sd->mru_bit_map, stream_num;
 u32 shifted_values, unshifted_values;
 u32 index_value_mask, shifted_values_mask;
 int i;
 bool is_read_ahead = 0;
 struct STREAM_DETECT *current_sd;

 for (i = 0; i < MAX_STREAMS_TRACKED; ++i) {
  stream_num = (*track_stream >>
   (i * BITS_PER_INDEX_STREAM)) &
   STREAM_MASK;
  current_sd = &current_ld_sd->stream_track[stream_num];




  if ((current_sd->next_seq_lba) &&
      (io_info->ldStartBlock >= current_sd->next_seq_lba) &&
      (io_info->ldStartBlock <= (current_sd->next_seq_lba + 32)) &&
      (current_sd->is_read == io_info->isRead)) {

   if ((io_info->ldStartBlock != current_sd->next_seq_lba) &&
       ((!io_info->isRead) || (!is_read_ahead)))




    continue;

   SET_STREAM_DETECTED(cmd->io_request->RaidContext.raid_context_g35);
   current_sd->next_seq_lba =
   io_info->ldStartBlock + io_info->numBlocks;



   shifted_values_mask =
    (1 << i * BITS_PER_INDEX_STREAM) - 1;
   shifted_values = ((*track_stream & shifted_values_mask)
      << BITS_PER_INDEX_STREAM);
   index_value_mask =
    STREAM_MASK << i * BITS_PER_INDEX_STREAM;
   unshifted_values =
    *track_stream & ~(shifted_values_mask |
    index_value_mask);
   *track_stream =
    unshifted_values | shifted_values | stream_num;
   return;
  }
 }




 stream_num = (*track_stream >>
  ((MAX_STREAMS_TRACKED - 1) * BITS_PER_INDEX_STREAM)) &
  STREAM_MASK;
 current_sd = &current_ld_sd->stream_track[stream_num];
 current_sd->is_read = io_info->isRead;
 current_sd->next_seq_lba = io_info->ldStartBlock + io_info->numBlocks;
 *track_stream = (((*track_stream & ZERO_LAST_STREAM) << 4) | stream_num);
 return;
}
