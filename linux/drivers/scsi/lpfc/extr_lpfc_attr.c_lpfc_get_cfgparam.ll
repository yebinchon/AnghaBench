; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_get_cfgparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_get_cfgparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i32, i64, i64, i64, i64, i32, %struct.TYPE_2__, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@lpfc_fcp_io_sched = common dso_local global i32 0, align 4
@lpfc_ns_query = common dso_local global i32 0, align 4
@lpfc_fcp2_no_tgt_reset = common dso_local global i32 0, align 4
@lpfc_cr_delay = common dso_local global i32 0, align 4
@lpfc_cr_count = common dso_local global i32 0, align 4
@lpfc_multi_ring_support = common dso_local global i32 0, align 4
@lpfc_multi_ring_rctl = common dso_local global i32 0, align 4
@lpfc_multi_ring_type = common dso_local global i32 0, align 4
@lpfc_ack0 = common dso_local global i32 0, align 4
@lpfc_xri_rebalancing = common dso_local global i32 0, align 4
@lpfc_topology = common dso_local global i32 0, align 4
@lpfc_link_speed = common dso_local global i32 0, align 4
@lpfc_poll_tmo = common dso_local global i32 0, align 4
@lpfc_task_mgmt_tmo = common dso_local global i32 0, align 4
@lpfc_enable_npiv = common dso_local global i32 0, align 4
@lpfc_fcf_failover_policy = common dso_local global i32 0, align 4
@lpfc_enable_rrq = common dso_local global i32 0, align 4
@lpfc_fdmi_on = common dso_local global i32 0, align 4
@lpfc_enable_SmartSAN = common dso_local global i32 0, align 4
@lpfc_use_msi = common dso_local global i32 0, align 4
@lpfc_nvme_oas = common dso_local global i32 0, align 4
@lpfc_nvme_embed_cmd = common dso_local global i32 0, align 4
@lpfc_fcp_imax = common dso_local global i32 0, align 4
@lpfc_force_rscn = common dso_local global i32 0, align 4
@lpfc_cq_poll_threshold = common dso_local global i32 0, align 4
@lpfc_cq_max_proc_limit = common dso_local global i32 0, align 4
@lpfc_fcp_cpu_map = common dso_local global i32 0, align 4
@lpfc_enable_hba_reset = common dso_local global i32 0, align 4
@lpfc_enable_hba_heartbeat = common dso_local global i32 0, align 4
@lpfc_EnableXLane = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_XLanePriority = common dso_local global i32 0, align 4
@lpfc_enable_bg = common dso_local global i32 0, align 4
@lpfc_prot_mask = common dso_local global i32 0, align 4
@lpfc_prot_guard = common dso_local global i32 0, align 4
@lpfc_poll = common dso_local global i64 0, align 8
@HBA_FCOE_MODE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"0581 BlockGuard feature not supported\0A\00", align 1
@LPFC_SLI3_BG_ENABLED = common dso_local global i32 0, align 4
@lpfc_suppress_rsp = common dso_local global i32 0, align 4
@lpfc_enable_fc4_type = common dso_local global i32 0, align 4
@lpfc_nvmet_mrq = common dso_local global i32 0, align 4
@lpfc_nvmet_mrq_post = common dso_local global i32 0, align 4
@lpfc_nvme_enable_fb = common dso_local global i32 0, align 4
@lpfc_nvmet_fb_size = common dso_local global i32 0, align 4
@lpfc_fcp_mq_threshold = common dso_local global i32 0, align 4
@lpfc_hdw_queue = common dso_local global i32 0, align 4
@lpfc_irq_chann = common dso_local global i32 0, align 4
@lpfc_enable_bbcr = common dso_local global i32 0, align 4
@lpfc_enable_dpp = common dso_local global i32 0, align 4
@LPFC_ENABLE_FCP = common dso_local global i32 0, align 4
@lpfc_sg_seg_cnt = common dso_local global i32 0, align 4
@lpfc_hba_queue_depth = common dso_local global i32 0, align 4
@lpfc_log_verbose = common dso_local global i32 0, align 4
@lpfc_aer_support = common dso_local global i32 0, align 4
@lpfc_sriov_nr_virtfn = common dso_local global i32 0, align 4
@lpfc_req_fw_upgrade = common dso_local global i32 0, align 4
@lpfc_suppress_link_up = common dso_local global i32 0, align 4
@lpfc_iocb_cnt = common dso_local global i32 0, align 4
@lpfc_delay_discovery = common dso_local global i32 0, align 4
@lpfc_sli_mode = common dso_local global i32 0, align 4
@lpfc_enable_mds_diags = common dso_local global i32 0, align 4
@lpfc_ras_fwlog_buffsize = common dso_local global i32 0, align 4
@lpfc_ras_fwlog_level = common dso_local global i32 0, align 4
@lpfc_ras_fwlog_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_get_cfgparam(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %3 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %4 = load i32, i32* @lpfc_fcp_io_sched, align 4
  %5 = call i32 @lpfc_fcp_io_sched_init(%struct.lpfc_hba* %3, i32 %4)
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = load i32, i32* @lpfc_ns_query, align 4
  %8 = call i32 @lpfc_ns_query_init(%struct.lpfc_hba* %6, i32 %7)
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = load i32, i32* @lpfc_fcp2_no_tgt_reset, align 4
  %11 = call i32 @lpfc_fcp2_no_tgt_reset_init(%struct.lpfc_hba* %9, i32 %10)
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = load i32, i32* @lpfc_cr_delay, align 4
  %14 = call i32 @lpfc_cr_delay_init(%struct.lpfc_hba* %12, i32 %13)
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = load i32, i32* @lpfc_cr_count, align 4
  %17 = call i32 @lpfc_cr_count_init(%struct.lpfc_hba* %15, i32 %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %19 = load i32, i32* @lpfc_multi_ring_support, align 4
  %20 = call i32 @lpfc_multi_ring_support_init(%struct.lpfc_hba* %18, i32 %19)
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = load i32, i32* @lpfc_multi_ring_rctl, align 4
  %23 = call i32 @lpfc_multi_ring_rctl_init(%struct.lpfc_hba* %21, i32 %22)
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = load i32, i32* @lpfc_multi_ring_type, align 4
  %26 = call i32 @lpfc_multi_ring_type_init(%struct.lpfc_hba* %24, i32 %25)
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %28 = load i32, i32* @lpfc_ack0, align 4
  %29 = call i32 @lpfc_ack0_init(%struct.lpfc_hba* %27, i32 %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = load i32, i32* @lpfc_xri_rebalancing, align 4
  %32 = call i32 @lpfc_xri_rebalancing_init(%struct.lpfc_hba* %30, i32 %31)
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %34 = load i32, i32* @lpfc_topology, align 4
  %35 = call i32 @lpfc_topology_init(%struct.lpfc_hba* %33, i32 %34)
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %37 = load i32, i32* @lpfc_link_speed, align 4
  %38 = call i32 @lpfc_link_speed_init(%struct.lpfc_hba* %36, i32 %37)
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = load i32, i32* @lpfc_poll_tmo, align 4
  %41 = call i32 @lpfc_poll_tmo_init(%struct.lpfc_hba* %39, i32 %40)
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %43 = load i32, i32* @lpfc_task_mgmt_tmo, align 4
  %44 = call i32 @lpfc_task_mgmt_tmo_init(%struct.lpfc_hba* %42, i32 %43)
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %46 = load i32, i32* @lpfc_enable_npiv, align 4
  %47 = call i32 @lpfc_enable_npiv_init(%struct.lpfc_hba* %45, i32 %46)
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %49 = load i32, i32* @lpfc_fcf_failover_policy, align 4
  %50 = call i32 @lpfc_fcf_failover_policy_init(%struct.lpfc_hba* %48, i32 %49)
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %52 = load i32, i32* @lpfc_enable_rrq, align 4
  %53 = call i32 @lpfc_enable_rrq_init(%struct.lpfc_hba* %51, i32 %52)
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %55 = load i32, i32* @lpfc_fdmi_on, align 4
  %56 = call i32 @lpfc_fdmi_on_init(%struct.lpfc_hba* %54, i32 %55)
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %58 = load i32, i32* @lpfc_enable_SmartSAN, align 4
  %59 = call i32 @lpfc_enable_SmartSAN_init(%struct.lpfc_hba* %57, i32 %58)
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %61 = load i32, i32* @lpfc_use_msi, align 4
  %62 = call i32 @lpfc_use_msi_init(%struct.lpfc_hba* %60, i32 %61)
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %64 = load i32, i32* @lpfc_nvme_oas, align 4
  %65 = call i32 @lpfc_nvme_oas_init(%struct.lpfc_hba* %63, i32 %64)
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %67 = load i32, i32* @lpfc_nvme_embed_cmd, align 4
  %68 = call i32 @lpfc_nvme_embed_cmd_init(%struct.lpfc_hba* %66, i32 %67)
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %70 = load i32, i32* @lpfc_fcp_imax, align 4
  %71 = call i32 @lpfc_fcp_imax_init(%struct.lpfc_hba* %69, i32 %70)
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %73 = load i32, i32* @lpfc_force_rscn, align 4
  %74 = call i32 @lpfc_force_rscn_init(%struct.lpfc_hba* %72, i32 %73)
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %76 = load i32, i32* @lpfc_cq_poll_threshold, align 4
  %77 = call i32 @lpfc_cq_poll_threshold_init(%struct.lpfc_hba* %75, i32 %76)
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %79 = load i32, i32* @lpfc_cq_max_proc_limit, align 4
  %80 = call i32 @lpfc_cq_max_proc_limit_init(%struct.lpfc_hba* %78, i32 %79)
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %82 = load i32, i32* @lpfc_fcp_cpu_map, align 4
  %83 = call i32 @lpfc_fcp_cpu_map_init(%struct.lpfc_hba* %81, i32 %82)
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %85 = load i32, i32* @lpfc_enable_hba_reset, align 4
  %86 = call i32 @lpfc_enable_hba_reset_init(%struct.lpfc_hba* %84, i32 %85)
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %88 = load i32, i32* @lpfc_enable_hba_heartbeat, align 4
  %89 = call i32 @lpfc_enable_hba_heartbeat_init(%struct.lpfc_hba* %87, i32 %88)
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %91 = load i32, i32* @lpfc_EnableXLane, align 4
  %92 = call i32 @lpfc_EnableXLane_init(%struct.lpfc_hba* %90, i32 %91)
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @LPFC_SLI_REV4, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %1
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 25
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %1
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %103 = load i32, i32* @lpfc_XLanePriority, align 4
  %104 = call i32 @lpfc_XLanePriority_init(%struct.lpfc_hba* %102, i32 %103)
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 24
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @memset(i32 %107, i32 0, i32 32)
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %110 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %109, i32 0, i32 23
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @memset(i32 %111, i32 0, i32 32)
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 22
  store i64 0, i64* %114, align 8
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 21
  store i64 0, i64* %116, align 8
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %118 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %117, i32 0, i32 20
  store i64 0, i64* %118, align 8
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 19
  store i64 0, i64* %120, align 8
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %122 = load i32, i32* @lpfc_enable_bg, align 4
  %123 = call i32 @lpfc_enable_bg_init(%struct.lpfc_hba* %121, i32 %122)
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %125 = load i32, i32* @lpfc_prot_mask, align 4
  %126 = call i32 @lpfc_prot_mask_init(%struct.lpfc_hba* %124, i32 %125)
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %128 = load i32, i32* @lpfc_prot_guard, align 4
  %129 = call i32 @lpfc_prot_guard_init(%struct.lpfc_hba* %127, i32 %128)
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %131 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @LPFC_SLI_REV4, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %101
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 18
  store i64 0, i64* %137, align 8
  br label %142

138:                                              ; preds = %101
  %139 = load i64, i64* @lpfc_poll, align 8
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 18
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %138, %135
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %144 = call i32 @lpfc_get_hba_function_mode(%struct.lpfc_hba* %143)
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %146 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %145, i32 0, i32 17
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %142
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %151 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @HBA_FCOE_MODE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %149
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %158 = load i32, i32* @KERN_INFO, align 4
  %159 = load i32, i32* @LOG_INIT, align 4
  %160 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %157, i32 %158, i32 %159, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %161 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %162 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %161, i32 0, i32 17
  store i64 0, i64* %162, align 8
  br label %175

163:                                              ; preds = %149, %142
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %165 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %164, i32 0, i32 17
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* @LPFC_SLI3_BG_ENABLED, align 4
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 16
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %163
  br label %175

175:                                              ; preds = %174, %156
  %176 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %177 = load i32, i32* @lpfc_suppress_rsp, align 4
  %178 = call i32 @lpfc_suppress_rsp_init(%struct.lpfc_hba* %176, i32 %177)
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %180 = load i32, i32* @lpfc_enable_fc4_type, align 4
  %181 = call i32 @lpfc_enable_fc4_type_init(%struct.lpfc_hba* %179, i32 %180)
  %182 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %183 = load i32, i32* @lpfc_nvmet_mrq, align 4
  %184 = call i32 @lpfc_nvmet_mrq_init(%struct.lpfc_hba* %182, i32 %183)
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %186 = load i32, i32* @lpfc_nvmet_mrq_post, align 4
  %187 = call i32 @lpfc_nvmet_mrq_post_init(%struct.lpfc_hba* %185, i32 %186)
  %188 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %189 = load i32, i32* @lpfc_nvme_enable_fb, align 4
  %190 = call i32 @lpfc_nvme_enable_fb_init(%struct.lpfc_hba* %188, i32 %189)
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %192 = load i32, i32* @lpfc_nvmet_fb_size, align 4
  %193 = call i32 @lpfc_nvmet_fb_size_init(%struct.lpfc_hba* %191, i32 %192)
  %194 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %195 = load i32, i32* @lpfc_fcp_mq_threshold, align 4
  %196 = call i32 @lpfc_fcp_mq_threshold_init(%struct.lpfc_hba* %194, i32 %195)
  %197 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %198 = load i32, i32* @lpfc_hdw_queue, align 4
  %199 = call i32 @lpfc_hdw_queue_init(%struct.lpfc_hba* %197, i32 %198)
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %201 = load i32, i32* @lpfc_irq_chann, align 4
  %202 = call i32 @lpfc_irq_chann_init(%struct.lpfc_hba* %200, i32 %201)
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %204 = load i32, i32* @lpfc_enable_bbcr, align 4
  %205 = call i32 @lpfc_enable_bbcr_init(%struct.lpfc_hba* %203, i32 %204)
  %206 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %207 = load i32, i32* @lpfc_enable_dpp, align 4
  %208 = call i32 @lpfc_enable_dpp_init(%struct.lpfc_hba* %206, i32 %207)
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %210 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @LPFC_SLI_REV4, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %226

214:                                              ; preds = %175
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %216 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %215, i32 0, i32 15
  store i64 0, i64* %216, align 8
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %218 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %217, i32 0, i32 14
  store i64 0, i64* %218, align 8
  %219 = load i32, i32* @LPFC_ENABLE_FCP, align 4
  %220 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %221 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 4
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %223 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %222, i32 0, i32 13
  store i64 0, i64* %223, align 8
  %224 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %225 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %224, i32 0, i32 12
  store i64 0, i64* %225, align 8
  br label %240

226:                                              ; preds = %175
  %227 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %228 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @LPFC_ENABLE_FCP, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %226
  %234 = load i32, i32* @LPFC_ENABLE_FCP, align 4
  %235 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %236 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %233, %226
  br label %240

240:                                              ; preds = %239, %214
  %241 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %242 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %241, i32 0, i32 11
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i32 0, i32 1
  %247 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %248 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 8
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %250 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %249, i32 0, i32 10
  store i64 0, i64* %250, align 8
  %251 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %252 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %240
  %256 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %257 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %261 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %260, i32 0, i32 4
  store i64 %259, i64* %261, align 8
  br label %262

262:                                              ; preds = %255, %240
  %263 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %264 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %262
  %268 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %269 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %268, i32 0, i32 9
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %273 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %272, i32 0, i32 5
  store i64 %271, i64* %273, align 8
  br label %274

274:                                              ; preds = %267, %262
  %275 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %276 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %275, i32 0, i32 5
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %279 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = icmp sgt i64 %277, %280
  br i1 %281, label %282, label %288

282:                                              ; preds = %274
  %283 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %284 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %287 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %286, i32 0, i32 5
  store i64 %285, i64* %287, align 8
  br label %288

288:                                              ; preds = %282, %274
  %289 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %290 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %289, i32 0, i32 6
  store i64 0, i64* %290, align 8
  %291 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %292 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %291, i32 0, i32 7
  store i64 0, i64* %292, align 8
  %293 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %294 = load i32, i32* @lpfc_sg_seg_cnt, align 4
  %295 = call i32 @lpfc_sg_seg_cnt_init(%struct.lpfc_hba* %293, i32 %294)
  %296 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %297 = load i32, i32* @lpfc_hba_queue_depth, align 4
  %298 = call i32 @lpfc_hba_queue_depth_init(%struct.lpfc_hba* %296, i32 %297)
  %299 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %300 = load i32, i32* @lpfc_log_verbose, align 4
  %301 = call i32 @lpfc_hba_log_verbose_init(%struct.lpfc_hba* %299, i32 %300)
  %302 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %303 = load i32, i32* @lpfc_aer_support, align 4
  %304 = call i32 @lpfc_aer_support_init(%struct.lpfc_hba* %302, i32 %303)
  %305 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %306 = load i32, i32* @lpfc_sriov_nr_virtfn, align 4
  %307 = call i32 @lpfc_sriov_nr_virtfn_init(%struct.lpfc_hba* %305, i32 %306)
  %308 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %309 = load i32, i32* @lpfc_req_fw_upgrade, align 4
  %310 = call i32 @lpfc_request_firmware_upgrade_init(%struct.lpfc_hba* %308, i32 %309)
  %311 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %312 = load i32, i32* @lpfc_suppress_link_up, align 4
  %313 = call i32 @lpfc_suppress_link_up_init(%struct.lpfc_hba* %311, i32 %312)
  %314 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %315 = load i32, i32* @lpfc_iocb_cnt, align 4
  %316 = call i32 @lpfc_iocb_cnt_init(%struct.lpfc_hba* %314, i32 %315)
  %317 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %318 = load i32, i32* @lpfc_delay_discovery, align 4
  %319 = call i32 @lpfc_delay_discovery_init(%struct.lpfc_hba* %317, i32 %318)
  %320 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %321 = load i32, i32* @lpfc_sli_mode, align 4
  %322 = call i32 @lpfc_sli_mode_init(%struct.lpfc_hba* %320, i32 %321)
  %323 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %324 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %323, i32 0, i32 8
  store i32 1, i32* %324, align 8
  %325 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %326 = load i32, i32* @lpfc_enable_mds_diags, align 4
  %327 = call i32 @lpfc_enable_mds_diags_init(%struct.lpfc_hba* %325, i32 %326)
  %328 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %329 = load i32, i32* @lpfc_ras_fwlog_buffsize, align 4
  %330 = call i32 @lpfc_ras_fwlog_buffsize_init(%struct.lpfc_hba* %328, i32 %329)
  %331 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %332 = load i32, i32* @lpfc_ras_fwlog_level, align 4
  %333 = call i32 @lpfc_ras_fwlog_level_init(%struct.lpfc_hba* %331, i32 %332)
  %334 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %335 = load i32, i32* @lpfc_ras_fwlog_func, align 4
  %336 = call i32 @lpfc_ras_fwlog_func_init(%struct.lpfc_hba* %334, i32 %335)
  ret void
}

declare dso_local i32 @lpfc_fcp_io_sched_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_ns_query_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_fcp2_no_tgt_reset_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_cr_delay_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_cr_count_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_multi_ring_support_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_multi_ring_rctl_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_multi_ring_type_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_ack0_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_xri_rebalancing_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_topology_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_link_speed_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_poll_tmo_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_task_mgmt_tmo_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_npiv_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_fcf_failover_policy_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_rrq_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_fdmi_on_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_SmartSAN_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_use_msi_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_nvme_oas_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_nvme_embed_cmd_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_fcp_imax_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_force_rscn_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_cq_poll_threshold_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_cq_max_proc_limit_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_fcp_cpu_map_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_hba_reset_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_hba_heartbeat_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_EnableXLane_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_XLanePriority_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @lpfc_enable_bg_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_prot_mask_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_prot_guard_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_get_hba_function_mode(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_suppress_rsp_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_fc4_type_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_nvmet_mrq_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_nvmet_mrq_post_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_nvme_enable_fb_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_nvmet_fb_size_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_fcp_mq_threshold_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_hdw_queue_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_irq_chann_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_bbcr_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_dpp_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sg_seg_cnt_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_hba_queue_depth_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_hba_log_verbose_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_aer_support_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sriov_nr_virtfn_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_request_firmware_upgrade_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_suppress_link_up_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_iocb_cnt_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_delay_discovery_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli_mode_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_mds_diags_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_ras_fwlog_buffsize_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_ras_fwlog_level_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_ras_fwlog_func_init(%struct.lpfc_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
