; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_rebuild_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_rebuild_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i64, i32, i32 }
%struct.myrb_hba = type { i32, %struct.myrb_cmdblk, %struct.pci_dev* }
%struct.myrb_cmdblk = type { %union.myrb_cmd_mbox }
%union.myrb_cmd_mbox = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i8*, i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@MYRB_STATUS_SUCCESS = common dso_local global i16 0, align 2
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Rebuild Not Initiated; already in progress\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@MYRB_CMD_REBUILD_ASYNC = common dso_local global i32 0, align 4
@MYRB_DCMD_TAG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Rebuild Not Cancelled; not in progress\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Cancellation of Rebuild Failed - Out of Memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MYRB_CMD_REBUILD_CONTROL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Rebuild %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Initiated\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Cancelled\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Rebuild Not Cancelled, status 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"Attempt to Rebuild Online or Unresponsive Drive\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"New Disk Failed During Rebuild\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Invalid Device Address\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Already in Progress\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Rebuild Failed - %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Rebuild Failed, status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @rebuild_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebuild_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.myrb_hba*, align 8
  %12 = alloca %struct.myrb_cmdblk*, align 8
  %13 = alloca %union.myrb_cmd_mbox*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.pci_dev*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.scsi_device* @to_scsi_device(%struct.device* %21)
  store %struct.scsi_device* %22, %struct.scsi_device** %10, align 8
  %23 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.myrb_hba* @shost_priv(i32 %25)
  store %struct.myrb_hba* %26, %struct.myrb_hba** %11, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @kstrtoint(i8* %27, i32 0, i32* %16)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %5, align 4
  br label %212

33:                                               ; preds = %4
  %34 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %35 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @myrb_logical_channel(i32 %39)
  %41 = icmp sge i64 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @ENXIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %212

45:                                               ; preds = %33
  %46 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %47 = call zeroext i16 @myrb_get_rbld_progress(%struct.myrb_hba* %46, i32* null)
  store i16 %47, i16* %14, align 2
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %98

50:                                               ; preds = %45
  %51 = load i16, i16* %14, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* @KERN_INFO, align 4
  %58 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %59 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %57, %struct.scsi_device* %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EALREADY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %212

62:                                               ; preds = %50
  %63 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %64 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %67 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %66, i32 0, i32 1
  store %struct.myrb_cmdblk* %67, %struct.myrb_cmdblk** %12, align 8
  %68 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %12, align 8
  %69 = call i32 @myrb_reset_cmd(%struct.myrb_cmdblk* %68)
  %70 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %12, align 8
  %71 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %70, i32 0, i32 0
  store %union.myrb_cmd_mbox* %71, %union.myrb_cmd_mbox** %13, align 8
  %72 = load i32, i32* @MYRB_CMD_REBUILD_ASYNC, align 4
  %73 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %13, align 8
  %74 = bitcast %union.myrb_cmd_mbox* %73 to %struct.TYPE_3__*
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load i8*, i8** @MYRB_DCMD_TAG, align 8
  %77 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %13, align 8
  %78 = bitcast %union.myrb_cmd_mbox* %77 to %struct.TYPE_3__*
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i8* %76, i8** %79, align 8
  %80 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %81 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %13, align 8
  %84 = bitcast %union.myrb_cmd_mbox* %83 to %struct.TYPE_3__*
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %87 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %13, align 8
  %90 = bitcast %union.myrb_cmd_mbox* %89 to %struct.TYPE_3__*
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 8
  %92 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %93 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %12, align 8
  %94 = call zeroext i16 @myrb_exec_cmd(%struct.myrb_hba* %92, %struct.myrb_cmdblk* %93)
  store i16 %94, i16* %14, align 2
  %95 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %96 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  br label %160

98:                                               ; preds = %45
  %99 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %100 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %99, i32 0, i32 2
  %101 = load %struct.pci_dev*, %struct.pci_dev** %100, align 8
  store %struct.pci_dev* %101, %struct.pci_dev** %18, align 8
  %102 = load i16, i16* %14, align 2
  %103 = zext i16 %102 to i32
  %104 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %105 = zext i16 %104 to i32
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %98
  %108 = load i32, i32* @KERN_INFO, align 4
  %109 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %110 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %108, %struct.scsi_device* %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %212

111:                                              ; preds = %98
  %112 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8* @dma_alloc_coherent(i32* %113, i32 1, i32* %20, i32 %114)
  store i8* %115, i8** %19, align 8
  %116 = load i8*, i8** %19, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i32, i32* @KERN_INFO, align 4
  %120 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %121 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %119, %struct.scsi_device* %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %212

124:                                              ; preds = %111
  %125 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %126 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %125, i32 0, i32 0
  %127 = call i32 @mutex_lock(i32* %126)
  %128 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %129 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %128, i32 0, i32 1
  store %struct.myrb_cmdblk* %129, %struct.myrb_cmdblk** %12, align 8
  %130 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %12, align 8
  %131 = call i32 @myrb_reset_cmd(%struct.myrb_cmdblk* %130)
  %132 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %12, align 8
  %133 = getelementptr inbounds %struct.myrb_cmdblk, %struct.myrb_cmdblk* %132, i32 0, i32 0
  store %union.myrb_cmd_mbox* %133, %union.myrb_cmd_mbox** %13, align 8
  %134 = load i32, i32* @MYRB_CMD_REBUILD_CONTROL, align 4
  %135 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %13, align 8
  %136 = bitcast %union.myrb_cmd_mbox* %135 to %struct.TYPE_4__*
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  store i32 %134, i32* %137, align 8
  %138 = load i8*, i8** @MYRB_DCMD_TAG, align 8
  %139 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %13, align 8
  %140 = bitcast %union.myrb_cmd_mbox* %139 to %struct.TYPE_4__*
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  store i8* %138, i8** %141, align 8
  %142 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %13, align 8
  %143 = bitcast %union.myrb_cmd_mbox* %142 to %struct.TYPE_4__*
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i32 255, i32* %144, align 8
  %145 = load i32, i32* %20, align 4
  %146 = load %union.myrb_cmd_mbox*, %union.myrb_cmd_mbox** %13, align 8
  %147 = bitcast %union.myrb_cmd_mbox* %146 to %struct.TYPE_4__*
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %150 = load %struct.myrb_cmdblk*, %struct.myrb_cmdblk** %12, align 8
  %151 = call zeroext i16 @myrb_exec_cmd(%struct.myrb_hba* %149, %struct.myrb_cmdblk* %150)
  store i16 %151, i16* %14, align 2
  %152 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %153 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %152, i32 0, i32 0
  %154 = load i8*, i8** %19, align 8
  %155 = load i32, i32* %20, align 4
  %156 = call i32 @dma_free_coherent(i32* %153, i32 1, i8* %154, i32 %155)
  %157 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %158 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %157, i32 0, i32 0
  %159 = call i32 @mutex_unlock(i32* %158)
  br label %160

160:                                              ; preds = %124, %62
  %161 = load i16, i16* %14, align 2
  %162 = zext i16 %161 to i32
  %163 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %164 = zext i16 %163 to i32
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %160
  %167 = load i32, i32* @KERN_INFO, align 4
  %168 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %173 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %167, %struct.scsi_device* %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %172)
  %174 = load i64, i64* %9, align 8
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %5, align 4
  br label %212

176:                                              ; preds = %160
  %177 = load i32, i32* %16, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* @KERN_INFO, align 4
  %181 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %182 = load i16, i16* %14, align 2
  %183 = zext i16 %182 to i32
  %184 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %180, %struct.scsi_device* %181, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @EIO, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %5, align 4
  br label %212

187:                                              ; preds = %176
  %188 = load i16, i16* %14, align 2
  %189 = zext i16 %188 to i32
  switch i32 %189, label %194 [
    i32 131, label %190
    i32 129, label %191
    i32 130, label %192
    i32 128, label %193
  ]

190:                                              ; preds = %187
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8** %17, align 8
  br label %195

191:                                              ; preds = %187
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8** %17, align 8
  br label %195

192:                                              ; preds = %187
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8** %17, align 8
  br label %195

193:                                              ; preds = %187
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** %17, align 8
  br label %195

194:                                              ; preds = %187
  store i8* null, i8** %17, align 8
  br label %195

195:                                              ; preds = %194, %193, %192, %191, %190
  %196 = load i8*, i8** %17, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load i32, i32* @KERN_INFO, align 4
  %200 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %201 = load i8*, i8** %17, align 8
  %202 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %199, %struct.scsi_device* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %201)
  br label %209

203:                                              ; preds = %195
  %204 = load i32, i32* @KERN_INFO, align 4
  %205 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %206 = load i16, i16* %14, align 2
  %207 = zext i16 %206 to i32
  %208 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %204, %struct.scsi_device* %205, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %203, %198
  %210 = load i32, i32* @EIO, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %209, %179, %166, %118, %107, %56, %42, %31
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrb_hba* @shost_priv(i32) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i64 @myrb_logical_channel(i32) #1

declare dso_local zeroext i16 @myrb_get_rbld_progress(%struct.myrb_hba*, i32*) #1

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
