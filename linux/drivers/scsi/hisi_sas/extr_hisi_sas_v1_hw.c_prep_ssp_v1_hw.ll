; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_prep_ssp_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_prep_ssp_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }
%struct.hisi_sas_slot = type { i32, i32, %struct.hisi_sas_tmf_task*, %struct.hisi_sas_port*, %struct.hisi_sas_cmd_hdr*, %struct.sas_task* }
%struct.hisi_sas_tmf_task = type { i32, i32 }
%struct.hisi_sas_port = type { i32 }
%struct.hisi_sas_cmd_hdr = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sas_task = type { i32, %struct.sas_ssp_task, i32, %struct.domain_device* }
%struct.sas_ssp_task = type { i32, i32, %struct.scsi_cmnd*, i32, i64 }
%struct.scsi_cmnd = type { i32, i32, i32* }
%struct.domain_device = type { %struct.hisi_sas_device* }
%struct.hisi_sas_device = type { i32 }

@CMD_HDR_RESP_REPORT_OFF = common dso_local global i32 0, align 4
@CMD_HDR_TLR_CTRL_OFF = common dso_local global i32 0, align 4
@CMD_HDR_PORT_OFF = common dso_local global i32 0, align 4
@CMD_HDR_PRIORITY_OFF = common dso_local global i32 0, align 4
@CMD_HDR_MODE_OFF = common dso_local global i32 0, align 4
@CMD_HDR_CMD_OFF = common dso_local global i32 0, align 4
@CMD_HDR_VERIFY_DTL_OFF = common dso_local global i32 0, align 4
@CMD_HDR_SSP_FRAME_TYPE_OFF = common dso_local global i32 0, align 4
@CMD_HDR_DEVICE_ID_OFF = common dso_local global i32 0, align 4
@CMD_HDR_CFL_OFF = common dso_local global i32 0, align 4
@HISI_SAS_MAX_SSP_RESP_SZ = common dso_local global i32 0, align 4
@CMD_HDR_MRFL_OFF = common dso_local global i32 0, align 4
@CMD_HDR_IPTT_OFF = common dso_local global i32 0, align 4
@CMD_HDR_FIRST_BURST_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_slot*)* @prep_ssp_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_ssp_v1_hw(%struct.hisi_hba* %0, %struct.hisi_sas_slot* %1) #0 {
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
  %18 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_slot* %1, %struct.hisi_sas_slot** %4, align 8
  %19 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %20 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %19, i32 0, i32 5
  %21 = load %struct.sas_task*, %struct.sas_task** %20, align 8
  store %struct.sas_task* %21, %struct.sas_task** %5, align 8
  %22 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %23 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %22, i32 0, i32 4
  %24 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %23, align 8
  store %struct.hisi_sas_cmd_hdr* %24, %struct.hisi_sas_cmd_hdr** %6, align 8
  %25 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %26 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %25, i32 0, i32 3
  %27 = load %struct.domain_device*, %struct.domain_device** %26, align 8
  store %struct.domain_device* %27, %struct.domain_device** %7, align 8
  %28 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 0
  %30 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %29, align 8
  store %struct.hisi_sas_device* %30, %struct.hisi_sas_device** %8, align 8
  %31 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %32 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %31, i32 0, i32 3
  %33 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %32, align 8
  store %struct.hisi_sas_port* %33, %struct.hisi_sas_port** %9, align 8
  %34 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %35 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %34, i32 0, i32 1
  store %struct.sas_ssp_task* %35, %struct.sas_ssp_task** %10, align 8
  %36 = load %struct.sas_ssp_task*, %struct.sas_ssp_task** %10, align 8
  %37 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %36, i32 0, i32 2
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %37, align 8
  store %struct.scsi_cmnd* %38, %struct.scsi_cmnd** %11, align 8
  %39 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %40 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %39, i32 0, i32 2
  %41 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %40, align 8
  store %struct.hisi_sas_tmf_task* %41, %struct.hisi_sas_tmf_task** %12, align 8
  store i32 0, i32* %13, align 4
  %42 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %43 = icmp ne %struct.hisi_sas_tmf_task* %42, null
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %47 = load i32, i32* @CMD_HDR_RESP_REPORT_OFF, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* @CMD_HDR_TLR_CTRL_OFF, align 4
  %50 = shl i32 2, %49
  %51 = or i32 %48, %50
  %52 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %9, align 8
  %53 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CMD_HDR_PORT_OFF, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %51, %56
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @CMD_HDR_PRIORITY_OFF, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %57, %60
  %62 = load i32, i32* @CMD_HDR_MODE_OFF, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load i32, i32* @CMD_HDR_CMD_OFF, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %70 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @CMD_HDR_VERIFY_DTL_OFF, align 4
  %72 = shl i32 1, %71
  store i32 %72, i32* %17, align 4
  %73 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %74 = icmp ne %struct.hisi_sas_tmf_task* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %2
  %76 = load i32, i32* @CMD_HDR_SSP_FRAME_TYPE_OFF, align 4
  %77 = shl i32 3, %76
  %78 = load i32, i32* %17, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %17, align 4
  br label %100

80:                                               ; preds = %2
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %94 [
    i32 130, label %84
    i32 131, label %89
  ]

84:                                               ; preds = %80
  %85 = load i32, i32* @CMD_HDR_SSP_FRAME_TYPE_OFF, align 4
  %86 = shl i32 2, %85
  %87 = load i32, i32* %17, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %17, align 4
  store i32 1, i32* %13, align 4
  br label %99

89:                                               ; preds = %80
  %90 = load i32, i32* @CMD_HDR_SSP_FRAME_TYPE_OFF, align 4
  %91 = shl i32 1, %90
  %92 = load i32, i32* %17, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %17, align 4
  store i32 1, i32* %13, align 4
  br label %99

94:                                               ; preds = %80
  %95 = load i32, i32* @CMD_HDR_SSP_FRAME_TYPE_OFF, align 4
  %96 = shl i32 0, %95
  %97 = load i32, i32* %17, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %94, %89, %84
  br label %100

100:                                              ; preds = %99, %75
  %101 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %8, align 8
  %102 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CMD_HDR_DEVICE_ID_OFF, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %17, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = call i8* @cpu_to_le32(i32 %108)
  %110 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %111 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %113 = icmp ne %struct.hisi_sas_tmf_task* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %100
  %115 = load i32, i32* @CMD_HDR_CFL_OFF, align 4
  %116 = zext i32 %115 to i64
  %117 = shl i64 2, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %18, align 4
  br label %124

119:                                              ; preds = %100
  %120 = load i32, i32* @CMD_HDR_CFL_OFF, align 4
  %121 = zext i32 %120 to i64
  %122 = shl i64 2, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i32, i32* @HISI_SAS_MAX_SSP_RESP_SZ, align 4
  %126 = sdiv i32 %125, 4
  %127 = load i32, i32* @CMD_HDR_MRFL_OFF, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* %18, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %18, align 4
  %131 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %132 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @CMD_HDR_IPTT_OFF, align 4
  %135 = shl i32 %133, %134
  %136 = call i8* @cpu_to_le32(i32 %135)
  %137 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %138 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %124
  %142 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %143 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %144 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %145 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %146 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %149 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @prep_prd_sge_v1_hw(%struct.hisi_hba* %142, %struct.hisi_sas_slot* %143, %struct.hisi_sas_cmd_hdr* %144, i32 %147, i32 %150)
  br label %152

152:                                              ; preds = %141, %124
  %153 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %154 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %158 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  %159 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %160 = call i32 @hisi_sas_cmd_hdr_addr_dma(%struct.hisi_sas_slot* %159)
  %161 = call i8* @cpu_to_le64(i32 %160)
  %162 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %163 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %165 = call i32 @hisi_sas_status_buf_addr_dma(%struct.hisi_sas_slot* %164)
  %166 = call i8* @cpu_to_le64(i32 %165)
  %167 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %168 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %170 = call i32* @hisi_sas_cmd_hdr_addr_mem(%struct.hisi_sas_slot* %169)
  %171 = getelementptr inbounds i32, i32* %170, i64 4
  store i32* %171, i32** %15, align 8
  %172 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %173 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %152
  store i32 128, i32* %16, align 4
  %178 = load i32, i32* @CMD_HDR_FIRST_BURST_OFF, align 4
  %179 = shl i32 1, %178
  %180 = load i32, i32* %18, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %18, align 4
  br label %182

182:                                              ; preds = %177, %152
  %183 = load i32, i32* %18, align 4
  %184 = call i8* @cpu_to_le32(i32 %183)
  %185 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %6, align 8
  %186 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load i32*, i32** %15, align 8
  %188 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %189 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %189, i32 0, i32 3
  %191 = call i32 @memcpy(i32* %187, i32* %190, i32 8)
  %192 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %193 = icmp ne %struct.hisi_sas_tmf_task* %192, null
  br i1 %193, label %224, label %194

194:                                              ; preds = %182
  %195 = load i32, i32* %16, align 4
  %196 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %197 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %195, %199
  %201 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %202 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 3
  %206 = or i32 %200, %205
  %207 = load i32*, i32** %15, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 9
  store i32 %206, i32* %208, align 4
  %209 = load i32*, i32** %15, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 12
  %211 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %212 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %212, i32 0, i32 2
  %214 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %213, align 8
  %215 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %218 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.sas_ssp_task, %struct.sas_ssp_task* %218, i32 0, i32 2
  %220 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %219, align 8
  %221 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @memcpy(i32* %210, i32* %216, i32 %222)
  br label %249

224:                                              ; preds = %182
  %225 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %226 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %15, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 10
  store i32 %227, i32* %229, align 4
  %230 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %231 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  switch i32 %232, label %247 [
    i32 129, label %233
    i32 128, label %233
  ]

233:                                              ; preds = %224, %224
  %234 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %235 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = ashr i32 %236, 8
  %238 = and i32 %237, 255
  %239 = load i32*, i32** %15, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 12
  store i32 %238, i32* %240, align 4
  %241 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %242 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, 255
  %245 = load i32*, i32** %15, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 13
  store i32 %244, i32* %246, align 4
  br label %248

247:                                              ; preds = %224
  br label %248

248:                                              ; preds = %247, %233
  br label %249

249:                                              ; preds = %248, %194
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @prep_prd_sge_v1_hw(%struct.hisi_hba*, %struct.hisi_sas_slot*, %struct.hisi_sas_cmd_hdr*, i32, i32) #1

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
