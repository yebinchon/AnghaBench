; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_prep_ata_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_prep_ata_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }
%struct.hisi_sas_slot = type { i32, i32, %struct.hisi_sas_tmf_task*, %struct.hisi_sas_cmd_hdr*, %struct.sas_task* }
%struct.hisi_sas_tmf_task = type { i32, i64 }
%struct.hisi_sas_cmd_hdr = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sas_task = type { i32, i32, %struct.TYPE_4__, i32, %struct.ata_queued_cmd*, %struct.domain_device* }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.ata_queued_cmd = type { i32 }
%struct.domain_device = type { i32, %struct.asd_sas_port*, %struct.hisi_sas_device*, %struct.domain_device* }
%struct.asd_sas_port = type { i32 }
%struct.hisi_sas_device = type { i32 }
%struct.hisi_sas_port = type { i32 }

@CMD_HDR_PORT_OFF = common dso_local global i32 0, align 4
@CMD_HDR_CMD_OFF = common dso_local global i32 0, align 4
@CMD_HDR_FORCE_PHY_MSK = common dso_local global i32 0, align 4
@CMD_HDR_PHY_ID_OFF = common dso_local global i32 0, align 4
@DIR_TO_DEVICE = common dso_local global i32 0, align 4
@CMD_HDR_DIR_OFF = common dso_local global i32 0, align 4
@DIR_TO_INI = common dso_local global i32 0, align 4
@CMD_HDR_DIR_MSK = common dso_local global i32 0, align 4
@ATA_CMD_DEV_RESET = common dso_local global i64 0, align 8
@ATA_SRST = common dso_local global i32 0, align 4
@CMD_HDR_RESET_OFF = common dso_local global i32 0, align 4
@CMD_HDR_FRAME_TYPE_OFF = common dso_local global i32 0, align 4
@CMD_HDR_DEV_ID_OFF = common dso_local global i32 0, align 4
@CMD_HDR_NCQ_TAG_OFF = common dso_local global i32 0, align 4
@HISI_SAS_MAX_STP_RESP_SZ = common dso_local global i32 0, align 4
@CMD_HDR_CFL_OFF = common dso_local global i32 0, align 4
@CMD_HDR_SG_MOD_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_slot*)* @prep_ata_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_ata_v2_hw(%struct.hisi_hba* %0, %struct.hisi_sas_slot* %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_slot*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.hisi_sas_device*, align 8
  %9 = alloca %struct.hisi_sas_cmd_hdr*, align 8
  %10 = alloca %struct.asd_sas_port*, align 8
  %11 = alloca %struct.hisi_sas_port*, align 8
  %12 = alloca %struct.hisi_sas_tmf_task*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_slot* %1, %struct.hisi_sas_slot** %4, align 8
  %20 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %21 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %20, i32 0, i32 4
  %22 = load %struct.sas_task*, %struct.sas_task** %21, align 8
  store %struct.sas_task* %22, %struct.sas_task** %5, align 8
  %23 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %24 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %23, i32 0, i32 5
  %25 = load %struct.domain_device*, %struct.domain_device** %24, align 8
  store %struct.domain_device* %25, %struct.domain_device** %6, align 8
  %26 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %27 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %26, i32 0, i32 3
  %28 = load %struct.domain_device*, %struct.domain_device** %27, align 8
  store %struct.domain_device* %28, %struct.domain_device** %7, align 8
  %29 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %30 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %29, i32 0, i32 2
  %31 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %30, align 8
  store %struct.hisi_sas_device* %31, %struct.hisi_sas_device** %8, align 8
  %32 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %33 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %32, i32 0, i32 3
  %34 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %33, align 8
  store %struct.hisi_sas_cmd_hdr* %34, %struct.hisi_sas_cmd_hdr** %9, align 8
  %35 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %36 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %35, i32 0, i32 1
  %37 = load %struct.asd_sas_port*, %struct.asd_sas_port** %36, align 8
  store %struct.asd_sas_port* %37, %struct.asd_sas_port** %10, align 8
  %38 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %39 = call %struct.hisi_sas_port* @to_hisi_sas_port(%struct.asd_sas_port* %38)
  store %struct.hisi_sas_port* %39, %struct.hisi_sas_port** %11, align 8
  %40 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %41 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %40, i32 0, i32 2
  %42 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %41, align 8
  store %struct.hisi_sas_tmf_task* %42, %struct.hisi_sas_tmf_task** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %43 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %11, align 8
  %44 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CMD_HDR_PORT_OFF, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* %16, align 4
  %48 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %49 = icmp ne %struct.domain_device* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %2
  %51 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %52 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @dev_is_expander(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32, i32* @CMD_HDR_CMD_OFF, align 4
  %58 = shl i32 3, %57
  %59 = load i32, i32* %16, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %16, align 4
  br label %66

61:                                               ; preds = %50, %2
  %62 = load i32, i32* @CMD_HDR_CMD_OFF, align 4
  %63 = shl i32 4, %62
  %64 = load i32, i32* %16, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %68 = icmp ne %struct.hisi_sas_tmf_task* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %71 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i32, i32* @CMD_HDR_FORCE_PHY_MSK, align 4
  %76 = load i32, i32* %16, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %16, align 4
  %78 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %12, align 8
  %79 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 1, %80
  %82 = load i32, i32* @CMD_HDR_PHY_ID_OFF, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %74, %69, %66
  %87 = load i32, i32* %16, align 4
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %9, align 8
  %90 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %89, i32 0, i32 6
  store i8* %88, i8** %90, align 8
  %91 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %92 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %106 [
    i32 128, label %94
    i32 129, label %100
  ]

94:                                               ; preds = %86
  store i32 1, i32* %14, align 4
  %95 = load i32, i32* @DIR_TO_DEVICE, align 4
  %96 = load i32, i32* @CMD_HDR_DIR_OFF, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %17, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %17, align 4
  br label %111

100:                                              ; preds = %86
  store i32 1, i32* %14, align 4
  %101 = load i32, i32* @DIR_TO_INI, align 4
  %102 = load i32, i32* @CMD_HDR_DIR_OFF, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %17, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %17, align 4
  br label %111

106:                                              ; preds = %86
  %107 = load i32, i32* @CMD_HDR_DIR_MSK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %17, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %17, align 4
  br label %111

111:                                              ; preds = %106, %100, %94
  %112 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %113 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ATA_CMD_DEV_RESET, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %111
  %120 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %121 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ATA_SRST, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load i32, i32* @CMD_HDR_RESET_OFF, align 4
  %130 = shl i32 1, %129
  %131 = load i32, i32* %17, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %128, %119, %111
  %134 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %135 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %138 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @hisi_sas_get_ata_protocol(%struct.TYPE_5__* %136, i32 %139)
  %141 = load i32, i32* @CMD_HDR_FRAME_TYPE_OFF, align 4
  %142 = shl i32 %140, %141
  %143 = load i32, i32* %17, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %17, align 4
  %145 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %8, align 8
  %146 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @CMD_HDR_DEV_ID_OFF, align 4
  %149 = shl i32 %147, %148
  %150 = load i32, i32* %17, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = call i8* @cpu_to_le32(i32 %152)
  %154 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %9, align 8
  %155 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %154, i32 0, i32 5
  store i8* %153, i8** %155, align 8
  %156 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %157 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %133
  %162 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %163 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %162, i32 0, i32 4
  %164 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %163, align 8
  store %struct.ata_queued_cmd* %164, %struct.ata_queued_cmd** %19, align 8
  %165 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %19, align 8
  %166 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = shl i32 %168, 3
  %170 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %171 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %169
  store i32 %175, i32* %173, align 8
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* @CMD_HDR_NCQ_TAG_OFF, align 4
  %178 = shl i32 %176, %177
  %179 = load i32, i32* %18, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %18, align 4
  br label %181

181:                                              ; preds = %161, %133
  %182 = load i32, i32* @HISI_SAS_MAX_STP_RESP_SZ, align 4
  %183 = sdiv i32 %182, 4
  %184 = load i32, i32* @CMD_HDR_CFL_OFF, align 4
  %185 = shl i32 %183, %184
  %186 = load i32, i32* @CMD_HDR_SG_MOD_OFF, align 4
  %187 = shl i32 2, %186
  %188 = or i32 %185, %187
  %189 = load i32, i32* %18, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %18, align 4
  %191 = load i32, i32* %18, align 4
  %192 = call i8* @cpu_to_le32(i32 %191)
  %193 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %9, align 8
  %194 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %193, i32 0, i32 4
  store i8* %192, i8** %194, align 8
  %195 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %196 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @cpu_to_le32(i32 %197)
  %199 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %9, align 8
  %200 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %199, i32 0, i32 3
  store i8* %198, i8** %200, align 8
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %181
  %204 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %205 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %206 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %9, align 8
  %207 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %208 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %211 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @prep_prd_sge_v2_hw(%struct.hisi_hba* %204, %struct.hisi_sas_slot* %205, %struct.hisi_sas_cmd_hdr* %206, i32 %209, i32 %212)
  br label %214

214:                                              ; preds = %203, %181
  %215 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %216 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i8* @cpu_to_le32(i32 %217)
  %219 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %9, align 8
  %220 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  %221 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %222 = call i32 @hisi_sas_cmd_hdr_addr_dma(%struct.hisi_sas_slot* %221)
  %223 = call i8* @cpu_to_le64(i32 %222)
  %224 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %9, align 8
  %225 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %224, i32 0, i32 1
  store i8* %223, i8** %225, align 8
  %226 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %227 = call i32 @hisi_sas_status_buf_addr_dma(%struct.hisi_sas_slot* %226)
  %228 = call i8* @cpu_to_le64(i32 %227)
  %229 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %9, align 8
  %230 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  %231 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %232 = call i32* @hisi_sas_cmd_hdr_addr_mem(%struct.hisi_sas_slot* %231)
  store i32* %232, i32** %13, align 8
  %233 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %234 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = call i64 @likely(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %214
  %243 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %244 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, 128
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %242, %214
  %250 = load i32*, i32** %13, align 8
  %251 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %252 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = call i32 @memcpy(i32* %250, %struct.TYPE_5__* %253, i32 4)
  ret void
}

declare dso_local %struct.hisi_sas_port* @to_hisi_sas_port(%struct.asd_sas_port*) #1

declare dso_local i64 @dev_is_expander(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hisi_sas_get_ata_protocol(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @prep_prd_sge_v2_hw(%struct.hisi_hba*, %struct.hisi_sas_slot*, %struct.hisi_sas_cmd_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @hisi_sas_cmd_hdr_addr_dma(%struct.hisi_sas_slot*) #1

declare dso_local i32 @hisi_sas_status_buf_addr_dma(%struct.hisi_sas_slot*) #1

declare dso_local i32* @hisi_sas_cmd_hdr_addr_mem(%struct.hisi_sas_slot*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
