; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_consistency_check_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_consistency_check_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i64, i16, i32 }
%struct.myrb_hba = type { i32, %struct.myrb_cmdblk, %struct.pci_dev* }
%struct.myrb_cmdblk = type { %union.myrb_cmd_mbox }
%union.myrb_cmd_mbox = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, i32 }
%struct.pci_dev = type { i32 }
%struct.myrb_rbld_progress = type { i32 }
%struct.TYPE_3__ = type { i16, i32, i8*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@MYRB_STATUS_SUCCESS = common dso_local global i16 0, align 2
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Check Consistency Not Initiated; already in progress\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@MYRB_CMD_CHECK_CONSISTENCY_ASYNC = common dso_local global i32 0, align 4
@MYRB_DCMD_TAG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Check Consistency Not Cancelled; not in progress\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Cancellation of Check Consistency Failed - Out of Memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MYRB_CMD_REBUILD_CONTROL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Check Consistency %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Initiated\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Cancelled\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Check Consistency Not Cancelled, status 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Dependent Physical Device is DEAD\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"New Disk Failed During Rebuild\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Invalid or Nonredundant Logical Drive\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Already in Progress\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Check Consistency Failed - %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Check Consistency Failed, status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @consistency_check_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consistency_check_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.myrb_hba*, align 8
  %12 = alloca %struct.myrb_rbld_progress, align 4
  %13 = alloca %struct.myrb_cmdblk*, align 8
  %14 = alloca %union.myrb_cmd_mbox*, align 8
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.pci_dev*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call %struct.scsi_device* @to_scsi_device(%struct.device* %23)
  store %struct.scsi_device* %24, %struct.scsi_device** %10, align 8
  %25 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.myrb_hba* @shost_priv(i32 %27)
  store %struct.myrb_hba* %28, %struct.myrb_hba** %11, align 8
  store i16 -1, i16* %15, align 2
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kstrtoint(i8* %29, i32 0, i32* %18)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %5, align 4
  br label %213

35:                                               ; preds = %4
  %36 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @myrb_logical_channel(i32 %41)
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %213

47:                                               ; preds = %35
  %48 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %49 = call zeroext i16 @myrb_get_rbld_progress(%struct.myrb_hba* %48, %struct.myrb_rbld_progress* %12)
  store i16 %49, i16* %16, align 2
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %97

52:                                               ; preds = %47
  %53 = load i16, i16* %16, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @KERN_INFO, align 4
  %60 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %61 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %59, %struct.scsi_device* %60, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EALREADY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %213

64:                                               ; preds = %52
  %65 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %66 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %69 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %68, i32 0, i32 1
  store %struct.myrb_cmdblk* %69, %struct.myrb_cmdblk** %13, align 8
  %70 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %13, align 8
  %71 = call i32 @myrb_reset_cmd(%struct.myrb_cmdblk* %70)
  %72 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %13, align 8
  %73 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %72, i32 0, i32 0
  store %union.myrb_cmd_mbox* %73, %union.myrb_cmd_mbox** %14, align 8
  %74 = load i32, i32* @MYRB_CMD_CHECK_CONSISTENCY_ASYNC, align 4
  %75 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %14, align 8
  %76 = bitcast %union.myrb_cmd_mbox* %75 to %struct.TYPE_3__*
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 8
  %78 = load i8*, i8** @MYRB_DCMD_TAG, align 8
  %79 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %14, align 8
  %80 = bitcast %union.myrb_cmd_mbox* %79 to %struct.TYPE_3__*
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  %82 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %83 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %82, i32 0, i32 1
  %84 = load i16, i16* %83, align 8
  %85 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %14, align 8
  %86 = bitcast %union.myrb_cmd_mbox* %85 to %struct.TYPE_3__*
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i16 %84, i16* %87, align 8
  %88 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %14, align 8
  %89 = bitcast %union.myrb_cmd_mbox* %88 to %struct.TYPE_3__*
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %92 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %13, align 8
  %93 = call zeroext i16 @myrb_exec_cmd(%struct.myrb_hba* %91, %struct.myrb_cmdblk* %92)
  store i16 %93, i16* %16, align 2
  %94 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %95 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  br label %161

97:                                               ; preds = %47
  %98 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %99 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %98, i32 0, i32 2
  %100 = load %struct.pci_dev*, %struct.pci_dev** %99, align 8
  store %struct.pci_dev* %100, %struct.pci_dev** %20, align 8
  %101 = load i16, i16* %15, align 2
  %102 = zext i16 %101 to i32
  %103 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %104 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %103, i32 0, i32 1
  %105 = load i16, i16* %104, align 8
  %106 = zext i16 %105 to i32
  %107 = icmp ne i32 %102, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load i32, i32* @KERN_INFO, align 4
  %110 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %111 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %109, %struct.scsi_device* %110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %213

112:                                              ; preds = %97
  %113 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i8* @dma_alloc_coherent(i32* %114, i32 1, i32* %22, i32 %115)
  store i8* %116, i8** %21, align 8
  %117 = load i8*, i8** %21, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i32, i32* @KERN_INFO, align 4
  %121 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %122 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %120, %struct.scsi_device* %121, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %213

125:                                              ; preds = %112
  %126 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %127 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %126, i32 0, i32 0
  %128 = call i32 @mutex_lock(i32* %127)
  %129 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %130 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %129, i32 0, i32 1
  store %struct.myrb_cmdblk* %130, %struct.myrb_cmdblk** %13, align 8
  %131 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %13, align 8
  %132 = call i32 @myrb_reset_cmd(%struct.myrb_cmdblk* %131)
  %133 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %13, align 8
  %134 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %133, i32 0, i32 0
  store %union.myrb_cmd_mbox* %134, %union.myrb_cmd_mbox** %14, align 8
  %135 = load i32, i32* @MYRB_CMD_REBUILD_CONTROL, align 4
  %136 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %14, align 8
  %137 = bitcast %union.myrb_cmd_mbox* %136 to %struct.TYPE_4__*
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 8
  %139 = load i8*, i8** @MYRB_DCMD_TAG, align 8
  %140 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %14, align 8
  %141 = bitcast %union.myrb_cmd_mbox* %140 to %struct.TYPE_4__*
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  store i8* %139, i8** %142, align 8
  %143 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %14, align 8
  %144 = bitcast %union.myrb_cmd_mbox* %143 to %struct.TYPE_4__*
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i32 255, i32* %145, align 8
  %146 = load i32, i32* %22, align 4
  %147 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %14, align 8
  %148 = bitcast %union.myrb_cmd_mbox* %147 to %struct.TYPE_4__*
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %151 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %13, align 8
  %152 = call zeroext i16 @myrb_exec_cmd(%struct.myrb_hba* %150, %struct.myrb_cmdblk* %151)
  store i16 %152, i16* %16, align 2
  %153 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 0
  %155 = load i8*, i8** %21, align 8
  %156 = load i32, i32* %22, align 4
  %157 = call i32 @dma_free_coherent(i32* %154, i32 1, i8* %155, i32 %156)
  %158 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %159 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  br label %161

161:                                              ; preds = %125, %64
  %162 = load i16, i16* %16, align 2
  %163 = zext i16 %162 to i32
  %164 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %165 = zext i16 %164 to i32
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %161
  %168 = load i32, i32* @KERN_INFO, align 4
  %169 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %170 = load i32, i32* %18, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %174 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %168, %struct.scsi_device* %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %173)
  %175 = load i64, i64* %9, align 8
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %5, align 4
  br label %213

177:                                              ; preds = %161
  %178 = load i32, i32* %18, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* @KERN_INFO, align 4
  %182 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %183 = load i16, i16* %16, align 2
  %184 = zext i16 %183 to i32
  %185 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %181, %struct.scsi_device* %182, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @EIO, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %5, align 4
  br label %213

188:                                              ; preds = %177
  %189 = load i16, i16* %16, align 2
  %190 = zext i16 %189 to i32
  switch i32 %190, label %195 [
    i32 131, label %191
    i32 129, label %192
    i32 130, label %193
    i32 128, label %194
  ]

191:                                              ; preds = %188
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  br label %196

192:                                              ; preds = %188
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8** %19, align 8
  br label %196

193:                                              ; preds = %188
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8** %19, align 8
  br label %196

194:                                              ; preds = %188
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** %19, align 8
  br label %196

195:                                              ; preds = %188
  store i8* null, i8** %19, align 8
  br label %196

196:                                              ; preds = %195, %194, %193, %192, %191
  %197 = load i8*, i8** %19, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load i32, i32* @KERN_INFO, align 4
  %201 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %202 = load i8*, i8** %19, align 8
  %203 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %200, %struct.scsi_device* %201, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %202)
  br label %210

204:                                              ; preds = %196
  %205 = load i32, i32* @KERN_INFO, align 4
  %206 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %207 = load i16, i16* %16, align 2
  %208 = zext i16 %207 to i32
  %209 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %205, %struct.scsi_device* %206, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %204, %199
  %211 = load i32, i32* @EIO, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %210, %180, %167, %119, %108, %58, %44, %33
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrb_hba* @shost_priv(i32) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i64 @myrb_logical_channel(i32) #1

declare dso_local zeroext i16 @myrb_get_rbld_progress(%struct.myrb_hba*, %struct.myrb_rbld_progress*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @myrb_reset_cmd(%struct.myrb_cmdblk*) #1

declare dso_local zeroext i16 @myrb_exec_cmd(%struct.myrb_hba*, %struct.myrb_cmdblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
