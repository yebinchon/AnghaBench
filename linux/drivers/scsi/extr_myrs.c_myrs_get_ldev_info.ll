; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_ldev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_ldev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { %struct.TYPE_14__*, %struct.TYPE_12__*, i32, %struct.myrs_cmdblk }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.myrs_cmdblk = type { i8, %union.myrs_cmd_mbox }
%union.myrs_cmd_mbox = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %union.myrs_sgl, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%union.myrs_sgl = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i16 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.myrs_ldev_info = type { i16, i64, i64, i64, i64, %struct.TYPE_13__, i64, i32, i64, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MYRS_STATUS_FAILED = common dso_local global i8 0, align 1
@MYRS_DCMD_TAG = common dso_local global i32 0, align 4
@MYRS_CMD_OP_IOCTL = common dso_local global i32 0, align 4
@MYRS_IOCTL_GET_LDEV_INFO_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Sending GetLogicalDeviceInfoValid for ldev %d\0A\00", align 1
@MYRS_STATUS_SUCCESS = common dso_local global i8 0, align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Logical Drive %d is now %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Logical Drive %d Errors: Soft = %d, Failed = %d, Deferred Write = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Background Initialization\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Foreground Initialization\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Data Migration\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Patrol Operation\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Logical Drive %d: Background Initialization %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Completed\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.myrs_hba*, i16, %struct.myrs_ldev_info*)* @myrs_get_ldev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myrs_get_ldev_info(%struct.myrs_hba* %0, i16 zeroext %1, %struct.myrs_ldev_info* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.myrs_hba*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.myrs_ldev_info*, align 8
  %8 = alloca %struct.myrs_cmdblk*, align 8
  %9 = alloca %union.myrs_cmd_mbox*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.myrs_ldev_info, align 8
  %12 = alloca %union.myrs_sgl*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca %struct.myrs_ldev_info*, align 8
  %16 = alloca %struct.myrs_ldev_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.myrs_hba* %0, %struct.myrs_hba** %5, align 8
  store i16 %1, i16* %6, align 2
  store %struct.myrs_ldev_info* %2, %struct.myrs_ldev_info** %7, align 8
  %19 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %20 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %19, i32 0, i32 3
  store %struct.myrs_cmdblk* %20, %struct.myrs_cmdblk** %8, align 8
  %21 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %8, align 8
  %22 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %21, i32 0, i32 1
  store %union.myrs_cmd_mbox* %22, %union.myrs_cmd_mbox** %9, align 8
  %23 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %7, align 8
  %24 = call i32 @memcpy(%struct.myrs_ldev_info* %11, %struct.myrs_ldev_info* %23, i32 112)
  %25 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %26 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %7, align 8
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = call i32 @dma_map_single(i32* %28, %struct.myrs_ldev_info* %29, i32 112, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %33 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @dma_mapping_error(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i8, i8* @MYRS_STATUS_FAILED, align 1
  store i8 %40, i8* %4, align 1
  br label %277

41:                                               ; preds = %3
  %42 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %43 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %42, i32 0, i32 2
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %8, align 8
  %46 = call i32 @myrs_reset_cmd(%struct.myrs_cmdblk* %45)
  %47 = load i32, i32* @MYRS_DCMD_TAG, align 4
  %48 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %9, align 8
  %49 = bitcast %union.myrs_cmd_mbox* %48 to %struct.TYPE_11__*
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @MYRS_CMD_OP_IOCTL, align 4
  %52 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %9, align 8
  %53 = bitcast %union.myrs_cmd_mbox* %52 to %struct.TYPE_11__*
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 5
  store i32 %51, i32* %54, align 8
  %55 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %9, align 8
  %56 = bitcast %union.myrs_cmd_mbox* %55 to %struct.TYPE_11__*
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %9, align 8
  %60 = bitcast %union.myrs_cmd_mbox* %59 to %struct.TYPE_11__*
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %9, align 8
  %64 = bitcast %union.myrs_cmd_mbox* %63 to %struct.TYPE_11__*
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32 112, i32* %65, align 8
  %66 = load i16, i16* %6, align 2
  %67 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %9, align 8
  %68 = bitcast %union.myrs_cmd_mbox* %67 to %struct.TYPE_11__*
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i16 %66, i16* %70, align 4
  %71 = load i32, i32* @MYRS_IOCTL_GET_LDEV_INFO_VALID, align 4
  %72 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %9, align 8
  %73 = bitcast %union.myrs_cmd_mbox* %72 to %struct.TYPE_11__*
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %9, align 8
  %76 = bitcast %union.myrs_cmd_mbox* %75 to %struct.TYPE_11__*
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store %union.myrs_sgl* %77, %union.myrs_sgl** %12, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load %union.myrs_sgl*, %union.myrs_sgl** %12, align 8
  %80 = bitcast %union.myrs_sgl* %79 to %struct.TYPE_10__**
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 4
  %84 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %9, align 8
  %85 = bitcast %union.myrs_cmd_mbox* %84 to %struct.TYPE_11__*
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %union.myrs_sgl*, %union.myrs_sgl** %12, align 8
  %89 = bitcast %union.myrs_sgl* %88 to %struct.TYPE_10__**
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 4
  %93 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %94 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i16, i16* %6, align 2
  %98 = call i32 @dev_dbg(i32* %96, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i16 zeroext %97)
  %99 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %100 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %8, align 8
  %101 = call i32 @myrs_exec_cmd(%struct.myrs_hba* %99, %struct.myrs_cmdblk* %100)
  %102 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %8, align 8
  %103 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %102, i32 0, i32 0
  %104 = load i8, i8* %103, align 8
  store i8 %104, i8* %13, align 1
  %105 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %106 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %109 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %114 = call i32 @dma_unmap_single(i32* %111, i32 %112, i32 112, i32 %113)
  %115 = load i8, i8* %13, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* @MYRS_STATUS_SUCCESS, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %275

120:                                              ; preds = %41
  %121 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %7, align 8
  %122 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %121, i32 0, i32 0
  %123 = load i16, i16* %122, align 8
  store i16 %123, i16* %14, align 2
  %124 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %7, align 8
  store %struct.myrs_ldev_info* %124, %struct.myrs_ldev_info** %15, align 8
  store %struct.myrs_ldev_info* %11, %struct.myrs_ldev_info** %16, align 8
  %125 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %126 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %17, align 8
  %128 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %129 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %16, align 8
  %132 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %153

135:                                              ; preds = %120
  %136 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %137 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = call i8* @myrs_devstate_name(i64 %138)
  store i8* %139, i8** %18, align 8
  %140 = load i32, i32* @KERN_INFO, align 4
  %141 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %142 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %141, i32 0, i32 0
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = load i16, i16* %14, align 2
  %145 = load i8*, i8** %18, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %135
  %148 = load i8*, i8** %18, align 8
  br label %150

149:                                              ; preds = %135
  br label %150

150:                                              ; preds = %149, %147
  %151 = phi i8* [ %148, %147 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %149 ]
  %152 = call i32 (i32, %struct.TYPE_14__*, i8*, i16, i8*, ...) @shost_printk(i32 %140, %struct.TYPE_14__* %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %144, i8* %151)
  br label %153

153:                                              ; preds = %150, %120
  %154 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %155 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %154, i32 0, i32 14
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %16, align 8
  %158 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %156, %159
  br i1 %160, label %177, label %161

161:                                              ; preds = %153
  %162 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %163 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %16, align 8
  %166 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %164, %167
  br i1 %168, label %177, label %169

169:                                              ; preds = %161
  %170 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %171 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %16, align 8
  %174 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %172, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %169, %161, %153
  %178 = load i32, i32* @KERN_INFO, align 4
  %179 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %180 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %179, i32 0, i32 0
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = load i16, i16* %14, align 2
  %183 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %184 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %183, i32 0, i32 14
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %189 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %192 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = call i32 (i32, %struct.TYPE_14__*, i8*, i16, i8*, ...) @shost_printk(i32 %178, %struct.TYPE_14__* %181, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %182, i8* %187, i64 %190, i64 %193)
  br label %195

195:                                              ; preds = %177, %169
  %196 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %197 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %196, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %202 = load i16, i16* %14, align 2
  %203 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %204 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %203, i32 0, i32 13
  %205 = load i32, i32* %204, align 8
  %206 = load i64, i64* %17, align 8
  %207 = call i32 @myrs_report_progress(%struct.myrs_hba* %201, i16 zeroext %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %205, i64 %206)
  br label %250

208:                                              ; preds = %195
  %209 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %210 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %209, i32 0, i32 12
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  %214 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %215 = load i16, i16* %14, align 2
  %216 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %217 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %216, i32 0, i32 11
  %218 = load i32, i32* %217, align 8
  %219 = load i64, i64* %17, align 8
  %220 = call i32 @myrs_report_progress(%struct.myrs_hba* %214, i16 zeroext %215, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %218, i64 %219)
  br label %249

221:                                              ; preds = %208
  %222 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %223 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %222, i32 0, i32 10
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %221
  %227 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %228 = load i16, i16* %14, align 2
  %229 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %230 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 8
  %232 = load i64, i64* %17, align 8
  %233 = call i32 @myrs_report_progress(%struct.myrs_hba* %227, i16 zeroext %228, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %231, i64 %232)
  br label %248

234:                                              ; preds = %221
  %235 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %236 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %235, i32 0, i32 8
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %234
  %240 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %241 = load i16, i16* %14, align 2
  %242 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %243 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 8
  %245 = load i64, i64* %17, align 8
  %246 = call i32 @myrs_report_progress(%struct.myrs_hba* %240, i16 zeroext %241, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %244, i64 %245)
  br label %247

247:                                              ; preds = %239, %234
  br label %248

248:                                              ; preds = %247, %226
  br label %249

249:                                              ; preds = %248, %213
  br label %250

250:                                              ; preds = %249, %200
  %251 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %16, align 8
  %252 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %251, i32 0, i32 6
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %274

255:                                              ; preds = %250
  %256 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %257 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %256, i32 0, i32 6
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %274, label %260

260:                                              ; preds = %255
  %261 = load i32, i32* @KERN_INFO, align 4
  %262 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %263 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %262, i32 0, i32 0
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = load i16, i16* %14, align 2
  %266 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %15, align 8
  %267 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %273 = call i32 (i32, %struct.TYPE_14__*, i8*, i16, i8*, ...) @shost_printk(i32 %261, %struct.TYPE_14__* %264, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i16 zeroext %265, i8* %272)
  br label %274

274:                                              ; preds = %260, %255, %250
  br label %275

275:                                              ; preds = %274, %41
  %276 = load i8, i8* %13, align 1
  store i8 %276, i8* %4, align 1
  br label %277

277:                                              ; preds = %275, %39
  %278 = load i8, i8* %4, align 1
  ret i8 %278
}

declare dso_local i32 @memcpy(%struct.myrs_ldev_info*, %struct.myrs_ldev_info*, i32) #1

declare dso_local i32 @dma_map_single(i32*, %struct.myrs_ldev_info*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @myrs_reset_cmd(%struct.myrs_cmdblk*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i16 zeroext) #1

declare dso_local i32 @myrs_exec_cmd(%struct.myrs_hba*, %struct.myrs_cmdblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i8* @myrs_devstate_name(i64) #1

declare dso_local i32 @shost_printk(i32, %struct.TYPE_14__*, i8*, i16 zeroext, i8*, ...) #1

declare dso_local i32 @myrs_report_progress(%struct.myrs_hba*, i16 zeroext, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
