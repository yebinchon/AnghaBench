; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_get_fw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_beiscsi_get_fw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32, i32 }
%struct.beiscsi_hba = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.be_mcc_wrb = type { i32 }
%struct.be_fw_cfg = type { i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_QUERY_FIRMWARE_CONFIG = common dso_local global i32 0, align 4
@EMBED_MBX_MAX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BG_%d : Failed in beiscsi_get_fw_config\0A\00", align 1
@BEISCSI_PHYS_PORT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"BG_%d : invalid physical port id %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"BG_%d : invalid EQ count %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"BG_%d : invalid CQ count %d\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"BG_%d : EQ_Count : %d CQ_Count : %d\0A\00", align 1
@BEISCSI_ULP_COUNT = common dso_local global i64 0, align 8
@BEISCSI_ULP_ISCSI_INI_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [127 x i8] c"BG_%d : Function loaded on ULP : %d\0A\09iscsi_cid_count : %d\0A\09iscsi_cid_start : %d\0A\09 iscsi_icd_count : %d\0A\09 iscsi_icd_start : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"BG_%d : iSCSI initiator mode not set: ULP0 %x ULP1 %x\0A\00", align 1
@BEISCSI_ULP0 = common dso_local global i64 0, align 8
@BEISCSI_ULP1 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"BG_%d: invalid ICD count %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"BG_%d: invalid CID count %d\0A\00", align 1
@BEISCSI_FUNC_DUA_MODE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"BG_%d : DUA Mode : 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_get_fw_config(%struct.be_ctrl_info* %0, %struct.beiscsi_hba* %1) #0 {
  %3 = alloca %struct.be_ctrl_info*, align 8
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca %struct.be_fw_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %3, align 8
  store %struct.beiscsi_hba* %1, %struct.beiscsi_hba** %4, align 8
  %11 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %12 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %11, i32 0, i32 1
  %13 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %12)
  store %struct.be_mcc_wrb* %13, %struct.be_mcc_wrb** %5, align 8
  %14 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %15 = call %struct.be_fw_cfg* @embedded_payload(%struct.be_mcc_wrb* %14)
  store %struct.be_fw_cfg* %15, %struct.be_fw_cfg** %6, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %18 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %19 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %22 = call i32 @memset(%struct.be_mcc_wrb* %21, i32 0, i32 4)
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %24 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %23, i32 40, i32 1, i32 0)
  %25 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %26 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %25, i32 0, i32 6
  %27 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %28 = load i32, i32* @OPCODE_COMMON_QUERY_FIRMWARE_CONFIG, align 4
  %29 = load i32, i32* @EMBED_MBX_MAX_PAYLOAD_SIZE, align 4
  %30 = call i32 @be_cmd_hdr_prepare(i32* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %32 = call i64 @be_mbox_notify(%struct.be_ctrl_info* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %38 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %366

39:                                               ; preds = %2
  %40 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %41 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %44 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %47 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BEISCSI_PHYS_PORT_MAX, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %54 = load i32, i32* @KERN_ERR, align 4
  %55 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %56 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %57 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %366

61:                                               ; preds = %39
  %62 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %63 = call i32 @is_chip_be2_be3r(%struct.beiscsi_hba* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %132, label %65

65:                                               ; preds = %61
  %66 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %67 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %70 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %73 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %76 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  %78 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %79 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %65
  %84 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %85 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 2048
  br i1 %88, label %89, label %98

89:                                               ; preds = %83, %65
  %90 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %91 = load i32, i32* @KERN_ERR, align 4
  %92 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %93 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %94 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %366

98:                                               ; preds = %83
  %99 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %100 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %106 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 4096
  br i1 %109, label %110, label %119

110:                                              ; preds = %104, %98
  %111 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %112 = load i32, i32* @KERN_ERR, align 4
  %113 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %114 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %115 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %111, i32 %112, i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %366

119:                                              ; preds = %104
  %120 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %121 = load i32, i32* @KERN_INFO, align 4
  %122 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %123 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %124 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %128 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %126, i32 %130)
  br label %132

132:                                              ; preds = %119, %61
  store i64 0, i64* %10, align 8
  br label %133

133:                                              ; preds = %266, %132
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* @BEISCSI_ULP_COUNT, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %269

137:                                              ; preds = %133
  %138 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %139 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %138, i32 0, i32 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BEISCSI_ULP_ISCSI_INI_MODE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %265

148:                                              ; preds = %137
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %151 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  %153 = call i32 @set_bit(i64 %149, i32* %152)
  %154 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %155 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %154, i32 0, i32 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load i64, i64* %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %162 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32 %160, i32* %166, align 4
  %167 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %168 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %167, i32 0, i32 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %175 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 8
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* %10, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32 %173, i32* %179, align 4
  %180 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %181 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %180, i32 0, i32 4
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = load i64, i64* %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %188 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 6
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* %10, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32 %186, i32* %192, align 4
  %193 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %194 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %193, i32 0, i32 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = load i64, i64* %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %201 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* %10, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32 %199, i32* %205, align 4
  %206 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %207 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %206, i32 0, i32 5
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i64, i64* %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %214 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 10
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* %10, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32 %212, i32* %218, align 4
  %219 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %220 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %219, i32 0, i32 5
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = load i64, i64* %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %227 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 9
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* %10, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  store i32 %225, i32* %231, align 4
  %232 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %233 = load i32, i32* @KERN_INFO, align 4
  %234 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %235 = load i64, i64* %10, align 8
  %236 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %237 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 8
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* %10, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %244 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 7
  %246 = load i32*, i32** %245, align 8
  %247 = load i64, i64* %10, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %251 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = load i64, i64* %10, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %258 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 6
  %260 = load i32*, i32** %259, align 8
  %261 = load i64, i64* %10, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %232, i32 %233, i32 %234, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.5, i64 0, i64 0), i64 %235, i32 %242, i32 %249, i32 %256, i32 %263)
  br label %265

265:                                              ; preds = %148, %137
  br label %266

266:                                              ; preds = %265
  %267 = load i64, i64* %10, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %10, align 8
  br label %133

269:                                              ; preds = %133
  %270 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %271 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %294

275:                                              ; preds = %269
  %276 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %277 = load i32, i32* @KERN_ERR, align 4
  %278 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %279 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %280 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %279, i32 0, i32 4
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = load i64, i64* @BEISCSI_ULP0, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %287 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %286, i32 0, i32 4
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %287, align 8
  %289 = load i64, i64* @BEISCSI_ULP1, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %276, i32 %277, i32 %278, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %285, i32 %292)
  br label %366

294:                                              ; preds = %269
  store i64 0, i64* %10, align 8
  br label %295

295:                                              ; preds = %308, %294
  %296 = load i64, i64* %10, align 8
  %297 = load i64, i64* @BEISCSI_ULP_COUNT, align 8
  %298 = icmp ult i64 %296, %297
  br i1 %298, label %299, label %311

299:                                              ; preds = %295
  %300 = load i64, i64* %10, align 8
  %301 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %302 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 5
  %304 = call i64 @test_bit(i64 %300, i32* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %299
  br label %311

307:                                              ; preds = %299
  br label %308

308:                                              ; preds = %307
  %309 = load i64, i64* %10, align 8
  %310 = add i64 %309, 1
  store i64 %310, i64* %10, align 8
  br label %295

311:                                              ; preds = %306, %295
  %312 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %313 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* %10, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = load i32, i32* %317, align 4
  store i32 %318, i32* %8, align 4
  %319 = load i32, i32* %8, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %311
  %322 = load i32, i32* %8, align 4
  %323 = icmp sgt i32 %322, 65536
  br i1 %323, label %324, label %330

324:                                              ; preds = %321, %311
  %325 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %326 = load i32, i32* @KERN_ERR, align 4
  %327 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %328 = load i32, i32* %8, align 4
  %329 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %325, i32 %326, i32 %327, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %328)
  br label %366

330:                                              ; preds = %321
  %331 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %332 = load i64, i64* @BEISCSI_ULP0, align 8
  %333 = call i32 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba* %331, i64 %332)
  %334 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %335 = load i64, i64* @BEISCSI_ULP1, align 8
  %336 = call i32 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba* %334, i64 %335)
  %337 = add nsw i32 %333, %336
  store i32 %337, i32* %7, align 4
  %338 = load i32, i32* %7, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %330
  %341 = load i32, i32* %7, align 4
  %342 = icmp sgt i32 %341, 4096
  br i1 %342, label %343, label %349

343:                                              ; preds = %340, %330
  %344 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %345 = load i32, i32* @KERN_ERR, align 4
  %346 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %347 = load i32, i32* %7, align 4
  %348 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %344, i32 %345, i32 %346, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %347)
  br label %366

349:                                              ; preds = %340
  %350 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %351 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @BEISCSI_FUNC_DUA_MODE, align 4
  %354 = and i32 %352, %353
  %355 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %356 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 4
  store i32 %354, i32* %357, align 8
  %358 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %359 = load i32, i32* @KERN_INFO, align 4
  %360 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %361 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %362 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %358, i32 %359, i32 %360, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %364)
  store i32 0, i32* %9, align 4
  br label %366

366:                                              ; preds = %349, %343, %324, %275, %110, %89, %52, %34
  %367 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %368 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %367, i32 0, i32 0
  %369 = call i32 @mutex_unlock(i32* %368)
  %370 = load i32, i32* %9, align 4
  ret i32 %370
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local %struct.be_fw_cfg* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i64 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @is_chip_be2_be3r(%struct.beiscsi_hba*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i32 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
