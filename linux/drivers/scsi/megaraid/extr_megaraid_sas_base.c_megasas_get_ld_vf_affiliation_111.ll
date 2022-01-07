; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_get_ld_vf_affiliation_111.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_get_ld_vf_affiliation_111.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, %struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_17__ = type { i32 }
%struct.megasas_cmd = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.megasas_dcmd_frame }
%struct.megasas_dcmd_frame = type { i32, i32, %struct.TYPE_14__, i8*, i8*, i64, i64, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_19__* }
%struct.MR_LD_VF_AFFILIATION_111 = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64* }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"megasas_get_ld_vf_affiliation_111:Failed to get cmd for scsi%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"SR-IOV: Couldn't get LD/VF affiliation for scsi%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"SR-IOV: Couldn't allocate memory for new affiliation for scsi%d\0A\00", align 1
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_STAT_INVALID_STATUS = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_BOTH = common dso_local global i32 0, align 4
@MR_DCMD_LD_VF_MAP_GET_ALL_LDS_111 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"SR-IOV: Getting LD/VF affiliation for scsi%d\0A\00", align 1
@DCMD_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [67 x i8] c"SR-IOV: LD/VF affiliation DCMD failed with status 0x%x for scsi%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"SR-IOV: Got new LD/VF affiliation for scsi%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, i32)* @megasas_get_ld_vf_affiliation_111 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_get_ld_vf_affiliation_111(%struct.megasas_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.megasas_cmd*, align 8
  %7 = alloca %struct.megasas_dcmd_frame*, align 8
  %8 = alloca %struct.MR_LD_VF_AFFILIATION_111*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.MR_LD_VF_AFFILIATION_111* null, %struct.MR_LD_VF_AFFILIATION_111** %8, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %14 = call %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance* %13)
  store %struct.megasas_cmd* %14, %struct.megasas_cmd** %6, align 8
  %15 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %16 = icmp ne %struct.megasas_cmd* %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @KERN_DEBUG, align 4
  %19 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %20 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %19, i32 0, i32 1
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %24 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %23, i32 0, i32 3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_printk(i32 %18, i32* %22, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %257

31:                                               ; preds = %2
  %32 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store %struct.megasas_dcmd_frame* %35, %struct.megasas_dcmd_frame** %7, align 8
  %36 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %37 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %36, i32 0, i32 2
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = icmp ne %struct.TYPE_19__* %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %31
  %41 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %42 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %41, i32 0, i32 1
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %46 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %45, i32 0, i32 3
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %52 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %53 = call i32 @megasas_return_cmd(%struct.megasas_instance* %51, %struct.megasas_cmd* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %257

56:                                               ; preds = %31
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %61 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %60, i32 0, i32 2
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = call i32 @memset(%struct.TYPE_19__* %62, i32 0, i32 24)
  br label %91

64:                                               ; preds = %56
  %65 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %66 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %65, i32 0, i32 1
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.MR_LD_VF_AFFILIATION_111* @dma_alloc_coherent(i32* %68, i32 24, i32* %9, i32 %69)
  store %struct.MR_LD_VF_AFFILIATION_111* %70, %struct.MR_LD_VF_AFFILIATION_111** %8, align 8
  %71 = load %struct.MR_LD_VF_AFFILIATION_111*, %struct.MR_LD_VF_AFFILIATION_111** %8, align 8
  %72 = icmp ne %struct.MR_LD_VF_AFFILIATION_111* %71, null
  br i1 %72, label %90, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* @KERN_DEBUG, align 4
  %75 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %76 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %75, i32 0, i32 1
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %80 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %79, i32 0, i32 3
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_printk(i32 %74, i32* %78, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %86 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %87 = call i32 @megasas_return_cmd(%struct.megasas_instance* %85, %struct.megasas_cmd* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %257

90:                                               ; preds = %64
  br label %91

91:                                               ; preds = %90, %59
  %92 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %93 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %92, i32 0, i32 9
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %97 = call i32 @memset(%struct.TYPE_19__* %95, i32 0, i32 %96)
  %98 = load i32, i32* @MFI_CMD_DCMD, align 4
  %99 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %100 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @MFI_STAT_INVALID_STATUS, align 4
  %102 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %103 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %105 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* @MFI_FRAME_DIR_BOTH, align 4
  %107 = call i32 @cpu_to_le16(i32 %106)
  %108 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %109 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 8
  %110 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %111 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %110, i32 0, i32 6
  store i64 0, i64* %111, align 8
  %112 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %113 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %112, i32 0, i32 5
  store i64 0, i64* %113, align 8
  %114 = call i8* @cpu_to_le32(i32 24)
  %115 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %116 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @MR_DCMD_LD_VF_MAP_GET_ALL_LDS_111, align 4
  %118 = call i8* @cpu_to_le32(i32 %117)
  %119 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %120 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %91
  %124 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %125 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %129 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  store i8* %127, i8** %133, align 8
  br label %143

134:                                              ; preds = %91
  %135 = load i32, i32* %9, align 4
  %136 = call i8* @cpu_to_le32(i32 %135)
  %137 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %138 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  store i8* %136, i8** %142, align 8
  br label %143

143:                                              ; preds = %134, %123
  %144 = call i8* @cpu_to_le32(i32 24)
  %145 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %146 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  store i8* %144, i8** %150, align 8
  %151 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %152 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %151, i32 0, i32 1
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %156 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %155, i32 0, i32 3
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  %161 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %162 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %163 = call i64 @megasas_issue_blocked_cmd(%struct.megasas_instance* %161, %struct.megasas_cmd* %162, i32 0)
  %164 = load i64, i64* @DCMD_SUCCESS, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %143
  %167 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %168 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %167, i32 0, i32 1
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %172 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %175 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %174, i32 0, i32 3
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %170, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %173, i32 %178)
  store i32 1, i32* %11, align 4
  br label %241

180:                                              ; preds = %143
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %240, label %183

183:                                              ; preds = %180
  %184 = load %struct.MR_LD_VF_AFFILIATION_111*, %struct.MR_LD_VF_AFFILIATION_111** %8, align 8
  %185 = getelementptr inbounds %struct.MR_LD_VF_AFFILIATION_111, %struct.MR_LD_VF_AFFILIATION_111* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %12, align 8
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %236, %183
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.MR_LD_VF_AFFILIATION_111*, %struct.MR_LD_VF_AFFILIATION_111** %8, align 8
  %190 = getelementptr inbounds %struct.MR_LD_VF_AFFILIATION_111, %struct.MR_LD_VF_AFFILIATION_111* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %239

193:                                              ; preds = %187
  %194 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %195 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %194, i32 0, i32 2
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = load i64, i64* %12, align 8
  %205 = getelementptr inbounds i64, i64* %203, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.MR_LD_VF_AFFILIATION_111*, %struct.MR_LD_VF_AFFILIATION_111** %8, align 8
  %208 = getelementptr inbounds %struct.MR_LD_VF_AFFILIATION_111, %struct.MR_LD_VF_AFFILIATION_111* %207, i32 0, i32 2
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = load i64, i64* %12, align 8
  %216 = getelementptr inbounds i64, i64* %214, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %206, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %193
  %220 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %221 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %220, i32 0, i32 1
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %225 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %224, i32 0, i32 3
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %223, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %228)
  %230 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %231 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %230, i32 0, i32 2
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %231, align 8
  %233 = load %struct.MR_LD_VF_AFFILIATION_111*, %struct.MR_LD_VF_AFFILIATION_111** %8, align 8
  %234 = call i32 @memcpy(%struct.TYPE_19__* %232, %struct.MR_LD_VF_AFFILIATION_111* %233, i32 24)
  store i32 1, i32* %11, align 4
  br label %241

235:                                              ; preds = %193
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  br label %187

239:                                              ; preds = %187
  br label %240

240:                                              ; preds = %239, %180
  br label %241

241:                                              ; preds = %240, %219, %166
  %242 = load %struct.MR_LD_VF_AFFILIATION_111*, %struct.MR_LD_VF_AFFILIATION_111** %8, align 8
  %243 = icmp ne %struct.MR_LD_VF_AFFILIATION_111* %242, null
  br i1 %243, label %244, label %252

244:                                              ; preds = %241
  %245 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %246 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %245, i32 0, i32 1
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load %struct.MR_LD_VF_AFFILIATION_111*, %struct.MR_LD_VF_AFFILIATION_111** %8, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @dma_free_coherent(i32* %248, i32 24, %struct.MR_LD_VF_AFFILIATION_111* %249, i32 %250)
  br label %252

252:                                              ; preds = %244, %241
  %253 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %254 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %255 = call i32 @megasas_return_cmd(%struct.megasas_instance* %253, %struct.megasas_cmd* %254)
  %256 = load i32, i32* %11, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %252, %73, %40, %17
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.MR_LD_VF_AFFILIATION_111* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @megasas_issue_blocked_cmd(%struct.megasas_instance*, %struct.megasas_cmd*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.MR_LD_VF_AFFILIATION_111*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.MR_LD_VF_AFFILIATION_111*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
