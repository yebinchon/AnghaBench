; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_get_ld_vf_affiliation_12.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_get_ld_vf_affiliation_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, %struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.MR_LD_VF_MAP* }
%struct.MR_LD_VF_MAP = type { i64*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.megasas_cmd = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.megasas_dcmd_frame }
%struct.megasas_dcmd_frame = type { i32, i32, %struct.TYPE_14__, i8*, i8*, i64, i64, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
%struct.MR_LD_VF_AFFILIATION = type { i32, i64, i32, %struct.MR_LD_VF_MAP* }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"megasas_get_ld_vf_affiliation12: Failed to get cmd for scsi%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"SR-IOV: Couldn't get LD/VF affiliation for scsi%d\0A\00", align 1
@MAX_LOGICAL_DRIVES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"SR-IOV: Couldn't allocate memory for new affiliation for scsi%d\0A\00", align 1
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_STAT_INVALID_STATUS = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_BOTH = common dso_local global i32 0, align 4
@MR_DCMD_LD_VF_MAP_GET_ALL_LDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"SR-IOV: Getting LD/VF affiliation for scsi%d\0A\00", align 1
@DCMD_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [67 x i8] c"SR-IOV: LD/VF affiliation DCMD failed with status 0x%x for scsi%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"SR-IOV: Got new LD/VF affiliation for passive path for scsi%d\0A\00", align 1
@MR_LD_ACCESS_HIDDEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"SR-IOV: Got new LD/VF affiliation for scsi%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, i32)* @megasas_get_ld_vf_affiliation_12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_get_ld_vf_affiliation_12(%struct.megasas_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.megasas_cmd*, align 8
  %7 = alloca %struct.megasas_dcmd_frame*, align 8
  %8 = alloca %struct.MR_LD_VF_AFFILIATION*, align 8
  %9 = alloca %struct.MR_LD_VF_MAP*, align 8
  %10 = alloca %struct.MR_LD_VF_MAP*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.MR_LD_VF_AFFILIATION* null, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  store %struct.MR_LD_VF_MAP* null, %struct.MR_LD_VF_MAP** %9, align 8
  store %struct.MR_LD_VF_MAP* null, %struct.MR_LD_VF_MAP** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %19 = call %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance* %18)
  store %struct.megasas_cmd* %19, %struct.megasas_cmd** %6, align 8
  %20 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %21 = icmp ne %struct.megasas_cmd* %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @KERN_DEBUG, align 4
  %24 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %25 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %29 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %28, i32 0, i32 3
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_printk(i32 %23, i32* %27, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %446

36:                                               ; preds = %2
  %37 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  store %struct.megasas_dcmd_frame* %40, %struct.megasas_dcmd_frame** %7, align 8
  %41 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %42 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %41, i32 0, i32 2
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = icmp ne %struct.TYPE_17__* %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %36
  %46 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %47 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %46, i32 0, i32 1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %51 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %50, i32 0, i32 3
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %57 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %58 = call i32 @megasas_return_cmd(%struct.megasas_instance* %56, %struct.megasas_cmd* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %446

61:                                               ; preds = %36
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %66 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %65, i32 0, i32 2
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = load i32, i32* @MAX_LOGICAL_DRIVES, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 32
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memset(%struct.TYPE_17__* %67, i32 0, i32 %72)
  br label %106

74:                                               ; preds = %61
  %75 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %76 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %75, i32 0, i32 1
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* @MAX_LOGICAL_DRIVES, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 32
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.MR_LD_VF_AFFILIATION* @dma_alloc_coherent(i32* %78, i32 %83, i32* %11, i32 %84)
  store %struct.MR_LD_VF_AFFILIATION* %85, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %86 = load %struct.MR_LD_VF_AFFILIATION*, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %87 = icmp ne %struct.MR_LD_VF_AFFILIATION* %86, null
  br i1 %87, label %105, label %88

88:                                               ; preds = %74
  %89 = load i32, i32* @KERN_DEBUG, align 4
  %90 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %91 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %95 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %94, i32 0, i32 3
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dev_printk(i32 %89, i32* %93, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %101 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %102 = call i32 @megasas_return_cmd(%struct.megasas_instance* %100, %struct.megasas_cmd* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %446

105:                                              ; preds = %74
  br label %106

106:                                              ; preds = %105, %64
  %107 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %108 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %112 = call i32 @memset(%struct.TYPE_17__* %110, i32 0, i32 %111)
  %113 = load i32, i32* @MFI_CMD_DCMD, align 4
  %114 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %115 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @MFI_STAT_INVALID_STATUS, align 4
  %117 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %118 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %120 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = load i32, i32* @MFI_FRAME_DIR_BOTH, align 4
  %122 = call i32 @cpu_to_le16(i32 %121)
  %123 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %124 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %123, i32 0, i32 7
  store i32 %122, i32* %124, align 8
  %125 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %126 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %125, i32 0, i32 6
  store i64 0, i64* %126, align 8
  %127 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %128 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %127, i32 0, i32 5
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* @MAX_LOGICAL_DRIVES, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 32
  %133 = trunc i64 %132 to i32
  %134 = call i8* @cpu_to_le32(i32 %133)
  %135 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %136 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* @MR_DCMD_LD_VF_MAP_GET_ALL_LDS, align 4
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %140 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %106
  %144 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %145 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @cpu_to_le32(i32 %146)
  %148 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %149 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  store i8* %147, i8** %153, align 8
  br label %163

154:                                              ; preds = %106
  %155 = load i32, i32* %11, align 4
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %158 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  store i8* %156, i8** %162, align 8
  br label %163

163:                                              ; preds = %154, %143
  %164 = load i32, i32* @MAX_LOGICAL_DRIVES, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 32
  %168 = trunc i64 %167 to i32
  %169 = call i8* @cpu_to_le32(i32 %168)
  %170 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %171 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  store i8* %169, i8** %175, align 8
  %176 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %177 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %176, i32 0, i32 1
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %181 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %180, i32 0, i32 3
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %179, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  %186 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %187 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %188 = call i64 @megasas_issue_blocked_cmd(%struct.megasas_instance* %186, %struct.megasas_cmd* %187, i32 0)
  %189 = load i64, i64* @DCMD_SUCCESS, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %163
  %192 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %193 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %192, i32 0, i32 1
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %197 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %200 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %199, i32 0, i32 3
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %195, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %198, i32 %203)
  store i32 1, i32* %14, align 4
  br label %403

205:                                              ; preds = %163
  %206 = load i32, i32* %5, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %402, label %208

208:                                              ; preds = %205
  %209 = load %struct.MR_LD_VF_AFFILIATION*, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %210 = getelementptr inbounds %struct.MR_LD_VF_AFFILIATION, %struct.MR_LD_VF_AFFILIATION* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %224, label %213

213:                                              ; preds = %208
  %214 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %215 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %214, i32 0, i32 1
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %219 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %218, i32 0, i32 3
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %217, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %222)
  store i32 1, i32* %14, align 4
  br label %403

224:                                              ; preds = %208
  %225 = load %struct.MR_LD_VF_AFFILIATION*, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %226 = getelementptr inbounds %struct.MR_LD_VF_AFFILIATION, %struct.MR_LD_VF_AFFILIATION* %225, i32 0, i32 3
  %227 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %226, align 8
  store %struct.MR_LD_VF_MAP* %227, %struct.MR_LD_VF_MAP** %9, align 8
  %228 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %229 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %228, i32 0, i32 2
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 1
  %232 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %231, align 8
  store %struct.MR_LD_VF_MAP* %232, %struct.MR_LD_VF_MAP** %10, align 8
  %233 = load %struct.MR_LD_VF_AFFILIATION*, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %234 = getelementptr inbounds %struct.MR_LD_VF_AFFILIATION, %struct.MR_LD_VF_AFFILIATION* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %17, align 8
  store i32 0, i32* %12, align 4
  br label %236

236:                                              ; preds = %311, %224
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.MR_LD_VF_AFFILIATION*, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %239 = getelementptr inbounds %struct.MR_LD_VF_AFFILIATION, %struct.MR_LD_VF_AFFILIATION* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %314

242:                                              ; preds = %236
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %243

243:                                              ; preds = %286, %242
  %244 = load i32, i32* %13, align 4
  %245 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %246 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %245, i32 0, i32 2
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp slt i32 %244, %249
  br i1 %250, label %251, label %289

251:                                              ; preds = %243
  %252 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %9, align 8
  %253 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %10, align 8
  %257 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp eq i64 %255, %259
  br i1 %260, label %261, label %277

261:                                              ; preds = %251
  store i32 1, i32* %15, align 4
  %262 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %9, align 8
  %263 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %262, i32 0, i32 0
  %264 = load i64*, i64** %263, align 8
  %265 = load i64, i64* %17, align 8
  %266 = getelementptr inbounds i64, i64* %264, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %10, align 8
  %269 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %268, i32 0, i32 0
  %270 = load i64*, i64** %269, align 8
  %271 = load i64, i64* %17, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %267, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %261
  store i32 1, i32* %16, align 4
  br label %403

276:                                              ; preds = %261
  br label %277

277:                                              ; preds = %276, %251
  %278 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %10, align 8
  %279 = bitcast %struct.MR_LD_VF_MAP* %278 to i8*
  %280 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %10, align 8
  %281 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %279, i64 %283
  %285 = bitcast i8* %284 to %struct.MR_LD_VF_MAP*
  store %struct.MR_LD_VF_MAP* %285, %struct.MR_LD_VF_MAP** %10, align 8
  br label %286

286:                                              ; preds = %277
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %13, align 4
  br label %243

289:                                              ; preds = %243
  %290 = load i32, i32* %15, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %302, label %292

292:                                              ; preds = %289
  %293 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %9, align 8
  %294 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %293, i32 0, i32 0
  %295 = load i64*, i64** %294, align 8
  %296 = load i64, i64* %17, align 8
  %297 = getelementptr inbounds i64, i64* %295, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @MR_LD_ACCESS_HIDDEN, align 8
  %300 = icmp ne i64 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %292
  store i32 1, i32* %16, align 4
  br label %403

302:                                              ; preds = %292, %289
  %303 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %9, align 8
  %304 = bitcast %struct.MR_LD_VF_MAP* %303 to i8*
  %305 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %9, align 8
  %306 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %304, i64 %308
  %310 = bitcast i8* %309 to %struct.MR_LD_VF_MAP*
  store %struct.MR_LD_VF_MAP* %310, %struct.MR_LD_VF_MAP** %9, align 8
  br label %311

311:                                              ; preds = %302
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %12, align 4
  br label %236

314:                                              ; preds = %236
  %315 = load %struct.MR_LD_VF_AFFILIATION*, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %316 = getelementptr inbounds %struct.MR_LD_VF_AFFILIATION, %struct.MR_LD_VF_AFFILIATION* %315, i32 0, i32 3
  %317 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %316, align 8
  store %struct.MR_LD_VF_MAP* %317, %struct.MR_LD_VF_MAP** %9, align 8
  %318 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %319 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %318, i32 0, i32 2
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 1
  %322 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %321, align 8
  store %struct.MR_LD_VF_MAP* %322, %struct.MR_LD_VF_MAP** %10, align 8
  store i32 0, i32* %12, align 4
  br label %323

323:                                              ; preds = %398, %314
  %324 = load i32, i32* %12, align 4
  %325 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %326 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %325, i32 0, i32 2
  %327 = load %struct.TYPE_17__*, %struct.TYPE_17__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = icmp slt i32 %324, %329
  br i1 %330, label %331, label %401

331:                                              ; preds = %323
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %332

332:                                              ; preds = %373, %331
  %333 = load i32, i32* %13, align 4
  %334 = load %struct.MR_LD_VF_AFFILIATION*, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %335 = getelementptr inbounds %struct.MR_LD_VF_AFFILIATION, %struct.MR_LD_VF_AFFILIATION* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %376

338:                                              ; preds = %332
  %339 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %10, align 8
  %340 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %9, align 8
  %344 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = icmp eq i64 %342, %346
  br i1 %347, label %348, label %364

348:                                              ; preds = %338
  store i32 1, i32* %15, align 4
  %349 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %10, align 8
  %350 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %349, i32 0, i32 0
  %351 = load i64*, i64** %350, align 8
  %352 = load i64, i64* %17, align 8
  %353 = getelementptr inbounds i64, i64* %351, i64 %352
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %9, align 8
  %356 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %355, i32 0, i32 0
  %357 = load i64*, i64** %356, align 8
  %358 = load i64, i64* %17, align 8
  %359 = getelementptr inbounds i64, i64* %357, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %354, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %348
  store i32 1, i32* %16, align 4
  br label %403

363:                                              ; preds = %348
  br label %364

364:                                              ; preds = %363, %338
  %365 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %9, align 8
  %366 = bitcast %struct.MR_LD_VF_MAP* %365 to i8*
  %367 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %9, align 8
  %368 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %366, i64 %370
  %372 = bitcast i8* %371 to %struct.MR_LD_VF_MAP*
  store %struct.MR_LD_VF_MAP* %372, %struct.MR_LD_VF_MAP** %9, align 8
  br label %373

373:                                              ; preds = %364
  %374 = load i32, i32* %13, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %13, align 4
  br label %332

376:                                              ; preds = %332
  %377 = load i32, i32* %15, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %389, label %379

379:                                              ; preds = %376
  %380 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %10, align 8
  %381 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %380, i32 0, i32 0
  %382 = load i64*, i64** %381, align 8
  %383 = load i64, i64* %17, align 8
  %384 = getelementptr inbounds i64, i64* %382, i64 %383
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @MR_LD_ACCESS_HIDDEN, align 8
  %387 = icmp ne i64 %385, %386
  br i1 %387, label %388, label %389

388:                                              ; preds = %379
  store i32 1, i32* %16, align 4
  br label %403

389:                                              ; preds = %379, %376
  %390 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %10, align 8
  %391 = bitcast %struct.MR_LD_VF_MAP* %390 to i8*
  %392 = load %struct.MR_LD_VF_MAP*, %struct.MR_LD_VF_MAP** %10, align 8
  %393 = getelementptr inbounds %struct.MR_LD_VF_MAP, %struct.MR_LD_VF_MAP* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8, i8* %391, i64 %395
  %397 = bitcast i8* %396 to %struct.MR_LD_VF_MAP*
  store %struct.MR_LD_VF_MAP* %397, %struct.MR_LD_VF_MAP** %10, align 8
  br label %398

398:                                              ; preds = %389
  %399 = load i32, i32* %12, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %12, align 4
  br label %323

401:                                              ; preds = %323
  br label %402

402:                                              ; preds = %401, %205
  br label %403

403:                                              ; preds = %402, %388, %362, %301, %275, %213, %191
  %404 = load i32, i32* %16, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %425

406:                                              ; preds = %403
  %407 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %408 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %407, i32 0, i32 1
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 0
  %411 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %412 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %411, i32 0, i32 3
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %410, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %415)
  %417 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %418 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %417, i32 0, i32 2
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** %418, align 8
  %420 = load %struct.MR_LD_VF_AFFILIATION*, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %421 = load %struct.MR_LD_VF_AFFILIATION*, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %422 = getelementptr inbounds %struct.MR_LD_VF_AFFILIATION, %struct.MR_LD_VF_AFFILIATION* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = call i32 @memcpy(%struct.TYPE_17__* %419, %struct.MR_LD_VF_AFFILIATION* %420, i32 %423)
  store i32 1, i32* %14, align 4
  br label %425

425:                                              ; preds = %406, %403
  %426 = load %struct.MR_LD_VF_AFFILIATION*, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %427 = icmp ne %struct.MR_LD_VF_AFFILIATION* %426, null
  br i1 %427, label %428, label %441

428:                                              ; preds = %425
  %429 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %430 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %429, i32 0, i32 1
  %431 = load %struct.TYPE_15__*, %struct.TYPE_15__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %431, i32 0, i32 0
  %433 = load i32, i32* @MAX_LOGICAL_DRIVES, align 4
  %434 = add nsw i32 %433, 1
  %435 = sext i32 %434 to i64
  %436 = mul i64 %435, 32
  %437 = trunc i64 %436 to i32
  %438 = load %struct.MR_LD_VF_AFFILIATION*, %struct.MR_LD_VF_AFFILIATION** %8, align 8
  %439 = load i32, i32* %11, align 4
  %440 = call i32 @dma_free_coherent(i32* %432, i32 %437, %struct.MR_LD_VF_AFFILIATION* %438, i32 %439)
  br label %441

441:                                              ; preds = %428, %425
  %442 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %443 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %444 = call i32 @megasas_return_cmd(%struct.megasas_instance* %442, %struct.megasas_cmd* %443)
  %445 = load i32, i32* %14, align 4
  store i32 %445, i32* %3, align 4
  br label %446

446:                                              ; preds = %441, %88, %45, %22
  %447 = load i32, i32* %3, align 4
  ret i32 %447
}

declare dso_local %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.MR_LD_VF_AFFILIATION* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @megasas_issue_blocked_cmd(%struct.megasas_instance*, %struct.megasas_cmd*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.MR_LD_VF_AFFILIATION*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.MR_LD_VF_AFFILIATION*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
