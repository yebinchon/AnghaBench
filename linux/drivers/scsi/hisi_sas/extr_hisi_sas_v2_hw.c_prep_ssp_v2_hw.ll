; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_prep_ssp_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_prep_ssp_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }
%struct.hisi_sas_slot = type { i32, i32, %struct.hisi_sas_tmf_task*, %struct.hisi_sas_port*, %struct.hisi_sas_cmd_hdr*, %struct.sas_task* }
%struct.hisi_sas_tmf_task = type { i32, i32 }
%struct.hisi_sas_port = type { i32 }
%struct.hisi_sas_cmd_hdr = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sas_task = type { i32, %struct.sas_ssp_task, i32, %struct.domain_device* }
%struct.sas_ssp_task = type { i32, i32, %struct.scsi_cmnd*, i32 }
%struct.scsi_cmnd = type { i32, i32, i32* }
%struct.domain_device = type { %struct.hisi_sas_device* }
%struct.hisi_sas_device = type { i32 }

@CMD_HDR_RESP_REPORT_OFF = common dso_local global i32 0, align 4
@CMD_HDR_TLR_CTRL_OFF = common dso_local global i32 0, align 4
@CMD_HDR_PORT_OFF = common dso_local global i32 0, align 4
@CMD_HDR_PRIORITY_OFF = common dso_local global i32 0, align 4
@CMD_HDR_CMD_OFF = common dso_local global i32 0, align 4
@CMD_HDR_VDTL_OFF = common dso_local global i32 0, align 4
@CMD_HDR_FRAME_TYPE_OFF = common dso_local global i32 0, align 4
@DIR_NO_DATA = common dso_local global i32 0, align 4
@CMD_HDR_DIR_OFF = common dso_local global i32 0, align 4
@DIR_TO_DEVICE = common dso_local global i32 0, align 4
@DIR_TO_INI = common dso_local global i32 0, align 4
@CMD_HDR_DIR_MSK = common dso_local global i32 0, align 4
@CMD_HDR_DEV_ID_OFF = common dso_local global i32 0, align 4
@CMD_HDR_CFL_OFF = common dso_local global i32 0, align 4
@HISI_SAS_MAX_SSP_RESP_SZ = common dso_local global i32 0, align 4
@CMD_HDR_MRFL_OFF = common dso_local global i32 0, align 4
@CMD_HDR_SG_MOD_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_slot*)* @prep_ssp_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_ssp_v2_hw(%struct.hisi_hba* %0, %struct.hisi_sas_slot* %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_slot*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.hisi_sas_cmd_hdr*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.hisi_sas_device*, align 8
  %9 = alloca %struct.hisi_sas_port*, align 8
  %10 = alloca %struct.sas_ssp_task*, align 8
  %11 = alloca %struct.scsi_cmnd*, align 8
  %12 = alloca %struct.hisi_sas_tmf_task*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_slot* %1, %struct.hisi_sas_slot** %4, align 8
  %18 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %19 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %18, i32 0, i32 5
  %20 = load %struct.sas_task*, %struct.sas_task** %19, align 8
  store %struct.sas_task* %20, %struct.sas_task** %5, align 8
  %21 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %22 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %21, i32 0, i32 4
  %23 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %22, align 8
  store %struct.hisi_sas_cmd_hdr* %23, %struct.hisi_sas_cmd_hdr** %6, align 8
  %24 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %25 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %24, i32 0, i32 3
  %26 = load %struct.domain_device*, %struct.domain_device** %25, align 8
  store %struct.domain_device* %26, %struct.domain_device** %7, align 8
  %27 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %28 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %27, i32 0, i32 0
  %29 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %28, align 8
  store %struct.hisi_sas_device* %29, %struct.hisi_sas_device** %8, align 8
  %30 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %31 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %30, i32 0, i32 3
  %32 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %31, align 8
  store %struct.hisi_sas_port* %32, %struct.hisi_sas_port** %9, align 8
  %33 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %34 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %33, i32 0, i32 1
  store %struct.sas_ssp_task* %34, %struct.sas_ssp_task** %10, align 8
  %35 = load %struct.sas_ssp_task*, %struct.sas_ssp_task** %10, align 8
  %36 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %35, i32 0, i32 2
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %36, align 8
  store %struct.scsi_cmnd* %37, %struct.scsi_cmnd** %11, align 8
  %38 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %39 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %38, i32 0, i32 2
  %40 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %39, align 8
  store %struct.hisi_sas_tmf_task* %40, %struct.hisi_sas_tmf_task** %12, align 8
  store i32 0, i32* %13, align 4
  %41 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %42 = icmp ne %struct.hisi_sas_tmf_task* %41, null
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %46 = load i32, i32* @CMD_HDR_RESP_REPORT_OFF, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* @CMD_HDR_TLR_CTRL_OFF, align 4
  %49 = shl i32 2, %48
  %50 = or i32 %47, %49
  %51 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %9, align 8
  %52 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CMD_HDR_PORT_OFF, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %50, %55
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @CMD_HDR_PRIORITY_OFF, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = load i32, i32* @CMD_HDR_CMD_OFF, align 4
  %62 = shl i32 1, %61
  %63 = or i32 %60, %62
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %66 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @CMD_HDR_VDTL_OFF, align 4
  %68 = shl i32 1, %67
  store i32 %68, i32* %16, align 4
  %69 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %70 = icmp ne %struct.hisi_sas_tmf_task* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %2
  %72 = load i32, i32* @CMD_HDR_FRAME_TYPE_OFF, align 4
  %73 = shl i32 2, %72
  %74 = load i32, i32* %16, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* @DIR_NO_DATA, align 4
  %77 = load i32, i32* @CMD_HDR_DIR_OFF, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %16, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %16, align 4
  br label %107

81:                                               ; preds = %2
  %82 = load i32, i32* @CMD_HDR_FRAME_TYPE_OFF, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* %16, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %16, align 4
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %101 [
    i32 130, label %89
    i32 131, label %95
  ]

89:                                               ; preds = %81
  store i32 1, i32* %13, align 4
  %90 = load i32, i32* @DIR_TO_DEVICE, align 4
  %91 = load i32, i32* @CMD_HDR_DIR_OFF, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %16, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %16, align 4
  br label %106

95:                                               ; preds = %81
  store i32 1, i32* %13, align 4
  %96 = load i32, i32* @DIR_TO_INI, align 4
  %97 = load i32, i32* @CMD_HDR_DIR_OFF, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %16, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %16, align 4
  br label %106

101:                                              ; preds = %81
  %102 = load i32, i32* @CMD_HDR_DIR_MSK, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %16, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %101, %95, %89
  br label %107

107:                                              ; preds = %106, %71
  %108 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %8, align 8
  %109 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CMD_HDR_DEV_ID_OFF, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* %16, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %118 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* @CMD_HDR_CFL_OFF, align 4
  %120 = zext i32 %119 to i64
  %121 = shl i64 2, %120
  %122 = load i32, i32* @HISI_SAS_MAX_SSP_RESP_SZ, align 4
  %123 = sdiv i32 %122, 4
  %124 = load i32, i32* @CMD_HDR_MRFL_OFF, align 4
  %125 = shl i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = or i64 %121, %126
  %128 = load i32, i32* @CMD_HDR_SG_MOD_OFF, align 4
  %129 = shl i32 2, %128
  %130 = sext i32 %129 to i64
  %131 = or i64 %127, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = call i8* @cpu_to_le32(i32 %133)
  %135 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %136 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %138 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %142 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %107
  %146 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %147 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %148 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %149 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %150 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %153 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @prep_prd_sge_v2_hw(%struct.hisi_hba* %146, %struct.hisi_sas_slot* %147, %struct.hisi_sas_cmd_hdr* %148, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %145, %107
  %157 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %158 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @cpu_to_le32(i32 %159)
  %161 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %162 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %164 = call i32 @hisi_sas_cmd_hdr_addr_dma(%struct.hisi_sas_slot* %163)
  %165 = call i8* @cpu_to_le64(i32 %164)
  %166 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %167 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %169 = call i32 @hisi_sas_status_buf_addr_dma(%struct.hisi_sas_slot* %168)
  %170 = call i8* @cpu_to_le64(i32 %169)
  %171 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %172 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  %173 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %174 = call i32* @hisi_sas_cmd_hdr_addr_mem(%struct.hisi_sas_slot* %173)
  %175 = getelementptr inbounds i32, i32* %174, i64 4
  store i32* %175, i32** %15, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %178 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %178, i32 0, i32 3
  %180 = call i32 @memcpy(i32* %176, i32* %179, i32 8)
  %181 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %182 = icmp ne %struct.hisi_sas_tmf_task* %181, null
  br i1 %182, label %211, label %183

183:                                              ; preds = %156
  %184 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %185 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %189 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 3
  %193 = or i32 %187, %192
  %194 = load i32*, i32** %15, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 9
  store i32 %193, i32* %195, align 4
  %196 = load i32*, i32** %15, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 12
  %198 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %199 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %199, i32 0, i32 2
  %201 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %200, align 8
  %202 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %205 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %205, i32 0, i32 2
  %207 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %206, align 8
  %208 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @memcpy(i32* %197, i32* %203, i32 %209)
  br label %236

211:                                              ; preds = %156
  %212 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %213 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %15, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 10
  store i32 %214, i32* %216, align 4
  %217 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %218 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  switch i32 %219, label %234 [
    i32 129, label %220
    i32 128, label %220
  ]

220:                                              ; preds = %211, %211
  %221 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %222 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = ashr i32 %223, 8
  %225 = and i32 %224, 255
  %226 = load i32*, i32** %15, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 12
  store i32 %225, i32* %227, align 4
  %228 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %229 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, 255
  %232 = load i32*, i32** %15, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 13
  store i32 %231, i32* %233, align 4
  br label %235

234:                                              ; preds = %211
  br label %235

235:                                              ; preds = %234, %220
  br label %236

236:                                              ; preds = %235, %183
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @prep_prd_sge_v2_hw(%struct.hisi_hba*, %struct.hisi_sas_slot*, %struct.hisi_sas_cmd_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @hisi_sas_cmd_hdr_addr_dma(%struct.hisi_sas_slot*) #1

declare dso_local i32 @hisi_sas_status_buf_addr_dma(%struct.hisi_sas_slot*) #1

declare dso_local i32* @hisi_sas_cmd_hdr_addr_mem(%struct.hisi_sas_slot*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
