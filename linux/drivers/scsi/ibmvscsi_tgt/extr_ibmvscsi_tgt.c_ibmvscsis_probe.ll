; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i8*, i32, i32, i32 }
%struct.vio_device_id = type { i32 }
%struct.scsi_info = type { i8*, i32, %struct.TYPE_11__, i32, %struct.scsi_info*, i64, i32, i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, %struct.TYPE_7__, i32, i32, i32, %struct.vio_dev* }
%struct.TYPE_11__ = type { %struct.scsi_info* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"probe: allocation of adapter failed\0A\00", align 1
@IBMVSCSIS_NAMELEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"probe tport_name: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Probe: liobn 0x%x, riobn 0x%x\0A\00", align 1
@LOCAL = common dso_local global i64 0, align 8
@REMOTE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"VSCSI %s\00", align 1
@partition_name = common dso_local global i32 0, align 4
@partition_number = common dso_local global i32 0, align 4
@ibmvscsis_dev_lock = common dso_local global i32 0, align 4
@ibmvscsis_dev_list = common dso_local global i32 0, align 4
@INITIAL_SRP_LIMIT = common dso_local global i32 0, align 4
@SRP_MAX_IU_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"alloc_cmds failed, rc %d, num %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"probe: alloctimer failed, rc %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"probe: create_command_q failed, rc %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"probe: allocating cmd buffer failed\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"probe: error mapping command buffer\0A\00", align 1
@H_GET_PARTNER_INFO = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"probe hrc %ld, client partition num %d\0A\00", align 1
@ibmvscsis_handle_crq = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"ibmvscsis%s\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"create_workqueue failed\0A\00", align 1
@ibmvscsis_interrupt = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"ibmvscsis\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"probe: request_irq failed, rc %d\0A\00", align 1
@WAIT_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*, %struct.vio_device_id*)* @ibmvscsis_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsis_probe(%struct.vio_dev* %0, %struct.vio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.vio_device_id*, align 8
  %6 = alloca %struct.scsi_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [24 x i8], align 16
  store %struct.vio_dev* %0, %struct.vio_dev** %4, align 8
  store %struct.vio_device_id* %1, %struct.vio_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 144, i32 %10)
  %12 = bitcast i8* %11 to %struct.scsi_info*
  store %struct.scsi_info* %12, %struct.scsi_info** %6, align 8
  %13 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %14 = icmp ne %struct.scsi_info* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %19 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %18, i32 0, i32 1
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %346

22:                                               ; preds = %2
  %23 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %24 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %25 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %24, i32 0, i32 19
  store %struct.vio_dev* %23, %struct.vio_dev** %25, align 8
  %26 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %27 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %30 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %32 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %31, i32 0, i32 18
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %35 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %34, i32 0, i32 17
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %38 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %37, i32 0, i32 16
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %41 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %40, i32 0, i32 15
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @IBMVSCSIS_NAMELEN, align 4
  %45 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %46 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %45, i32 0, i32 1
  %47 = call i8* @dev_name(i32* %46)
  %48 = call i32 @snprintf(i8* %43, i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %50 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %49, i32 0, i32 8
  %51 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %52 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %57 = call i32 @read_dma_window(%struct.scsi_info* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %22
  br label %342

61:                                               ; preds = %22
  %62 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %63 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %62, i32 0, i32 8
  %64 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %65 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %64, i32 0, i32 12
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i64, i64* @LOCAL, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %73 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %72, i32 0, i32 12
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i64, i64* @REMOTE, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %71, i64 %79)
  %81 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %82 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %85 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @snprintf(i8* %83, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  %88 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %89 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %92 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %91, i32 0, i32 12
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %95 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %94, i32 0, i32 12
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @partition_name, align 4
  %99 = call i32 @strscpy(i32 %97, i32 %98, i32 4)
  %100 = load i32, i32* @partition_number, align 4
  %101 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %102 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %101, i32 0, i32 12
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = call i32 @spin_lock_bh(i32* @ibmvscsis_dev_lock)
  %105 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %106 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %105, i32 0, i32 1
  %107 = call i32 @list_add_tail(i32* %106, i32* @ibmvscsis_dev_list)
  %108 = call i32 @spin_unlock_bh(i32* @ibmvscsis_dev_lock)
  %109 = load i32, i32* @INITIAL_SRP_LIMIT, align 4
  %110 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %111 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %110, i32 0, i32 14
  store i32 %109, i32* %111, align 4
  %112 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %113 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %112, i32 0, i32 2
  %114 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %115 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %114, i32 0, i32 1
  %116 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %117 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %116, i32 0, i32 14
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SRP_MAX_IU_LEN, align 4
  %120 = call i32 @srp_target_alloc(%struct.TYPE_11__* %113, i32* %115, i32 %118, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %61
  br label %336

124:                                              ; preds = %61
  %125 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %126 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %127 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store %struct.scsi_info* %125, %struct.scsi_info** %128, align 8
  %129 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %130 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %131 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %130, i32 0, i32 14
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ibmvscsis_alloc_cmds(%struct.scsi_info* %129, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %124
  %137 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %138 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %137, i32 0, i32 8
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %141 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %140, i32 0, i32 14
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %139, i32 %142)
  br label %332

144:                                              ; preds = %124
  %145 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %146 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %145, i32 0, i32 13
  %147 = call i32 @spin_lock_init(i32* %146)
  %148 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %149 = call i32 @ibmvscsis_alloctimer(%struct.scsi_info* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %154 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %153, i32 0, i32 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 (i32*, i8*, ...) @dev_err(i32* %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  br label %329

157:                                              ; preds = %144
  %158 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %159 = call i32 @ibmvscsis_create_command_q(%struct.scsi_info* %158, i32 256)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %164 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %163, i32 0, i32 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 (i32*, i8*, ...) @dev_err(i32* %164, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  br label %326

167:                                              ; preds = %157
  %168 = load i32, i32* @PAGE_SIZE, align 4
  %169 = load i32, i32* @GFP_KERNEL, align 4
  %170 = call i8* @kzalloc(i32 %168, i32 %169)
  %171 = bitcast i8* %170 to %struct.scsi_info*
  %172 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %173 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %172, i32 0, i32 4
  store %struct.scsi_info* %171, %struct.scsi_info** %173, align 8
  %174 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %175 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %174, i32 0, i32 4
  %176 = load %struct.scsi_info*, %struct.scsi_info** %175, align 8
  %177 = icmp ne %struct.scsi_info* %176, null
  br i1 %177, label %184, label %178

178:                                              ; preds = %167
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %7, align 4
  %181 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %182 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %181, i32 0, i32 8
  %183 = call i32 (i32*, i8*, ...) @dev_err(i32* %182, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %318

184:                                              ; preds = %167
  %185 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %186 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %185, i32 0, i32 1
  %187 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %188 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %187, i32 0, i32 4
  %189 = load %struct.scsi_info*, %struct.scsi_info** %188, align 8
  %190 = load i32, i32* @PAGE_SIZE, align 4
  %191 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %192 = call i64 @dma_map_single(i32* %186, %struct.scsi_info* %189, i32 %190, i32 %191)
  %193 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %194 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %193, i32 0, i32 5
  store i64 %192, i64* %194, align 8
  %195 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %196 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %195, i32 0, i32 1
  %197 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %198 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @dma_mapping_error(i32* %196, i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %184
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %7, align 4
  %205 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %206 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %205, i32 0, i32 8
  %207 = call i32 (i32*, i8*, ...) @dev_err(i32* %206, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %313

208:                                              ; preds = %184
  %209 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %210 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %209, i32 0, i32 12
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @H_GET_PARTNER_INFO, align 4
  %214 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %215 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = trunc i64 %216 to i32
  %218 = load i32, i32* @PAGE_SIZE, align 4
  %219 = shl i32 %218, 32
  %220 = or i32 %217, %219
  %221 = call i64 @h_vioctl(i32 %212, i32 %213, i32 %220, i32 0, i32 0, i32 0, i32 0)
  store i64 %221, i64* %8, align 8
  %222 = load i64, i64* %8, align 8
  %223 = load i64, i64* @H_SUCCESS, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %235

225:                                              ; preds = %208
  %226 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %227 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %226, i32 0, i32 4
  %228 = load %struct.scsi_info*, %struct.scsi_info** %227, align 8
  %229 = bitcast %struct.scsi_info* %228 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @be64_to_cpu(i32 %230)
  %232 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %233 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %232, i32 0, i32 11
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  store i64 %231, i64* %234, align 8
  br label %235

235:                                              ; preds = %225, %208
  %236 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %237 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %236, i32 0, i32 8
  %238 = load i64, i64* %8, align 8
  %239 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %240 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %239, i32 0, i32 11
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %237, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i64 %238, i64 %242)
  %244 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %245 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %244, i32 0, i32 3
  %246 = load i32, i32* @ibmvscsis_handle_crq, align 4
  %247 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %248 = ptrtoint %struct.scsi_info* %247 to i64
  %249 = call i32 @tasklet_init(i32* %245, i32 %246, i64 %248)
  %250 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %251 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %250, i32 0, i32 10
  %252 = call i32 @init_completion(i32* %251)
  %253 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %254 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %253, i32 0, i32 9
  %255 = call i32 @init_completion(i32* %254)
  %256 = getelementptr inbounds [24 x i8], [24 x i8]* %9, i64 0, i64 0
  %257 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %258 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %257, i32 0, i32 1
  %259 = call i8* @dev_name(i32* %258)
  %260 = call i32 @snprintf(i8* %256, i32 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %259)
  %261 = getelementptr inbounds [24 x i8], [24 x i8]* %9, i64 0, i64 0
  %262 = call i32 @create_workqueue(i8* %261)
  %263 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %264 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %263, i32 0, i32 6
  store i32 %262, i32* %264, align 8
  %265 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %266 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %235
  %270 = load i32, i32* @ENOMEM, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %7, align 4
  %272 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %273 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %272, i32 0, i32 8
  %274 = call i32 (i32*, i8*, ...) @dev_err(i32* %273, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %304

275:                                              ; preds = %235
  %276 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %277 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @ibmvscsis_interrupt, align 4
  %280 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %281 = call i32 @request_irq(i32 %278, i32 %279, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %struct.scsi_info* %280)
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %275
  %285 = load i32, i32* @EPERM, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %7, align 4
  %287 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %288 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %287, i32 0, i32 8
  %289 = load i32, i32* %7, align 4
  %290 = call i32 (i32*, i8*, ...) @dev_err(i32* %288, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %289)
  br label %299

291:                                              ; preds = %275
  %292 = load i32, i32* @WAIT_ENABLED, align 4
  %293 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %294 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %293, i32 0, i32 7
  store i32 %292, i32* %294, align 4
  %295 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %296 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %295, i32 0, i32 1
  %297 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %298 = call i32 @dev_set_drvdata(i32* %296, %struct.scsi_info* %297)
  store i32 0, i32* %3, align 4
  br label %346

299:                                              ; preds = %284
  %300 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %301 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @destroy_workqueue(i32 %302)
  br label %304

304:                                              ; preds = %299, %269
  %305 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %306 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %305, i32 0, i32 1
  %307 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %308 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* @PAGE_SIZE, align 4
  %311 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %312 = call i32 @dma_unmap_single(i32* %306, i64 %309, i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %304, %202
  %314 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %315 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %314, i32 0, i32 4
  %316 = load %struct.scsi_info*, %struct.scsi_info** %315, align 8
  %317 = call i32 @kfree(%struct.scsi_info* %316)
  br label %318

318:                                              ; preds = %313, %178
  %319 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %320 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %319, i32 0, i32 3
  %321 = call i32 @tasklet_kill(i32* %320)
  %322 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %323 = call i32 @ibmvscsis_unregister_command_q(%struct.scsi_info* %322)
  %324 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %325 = call i32 @ibmvscsis_destroy_command_q(%struct.scsi_info* %324)
  br label %326

326:                                              ; preds = %318, %162
  %327 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %328 = call i32 @ibmvscsis_freetimer(%struct.scsi_info* %327)
  br label %329

329:                                              ; preds = %326, %152
  %330 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %331 = call i32 @ibmvscsis_free_cmds(%struct.scsi_info* %330)
  br label %332

332:                                              ; preds = %329, %136
  %333 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %334 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %333, i32 0, i32 2
  %335 = call i32 @srp_target_free(%struct.TYPE_11__* %334)
  br label %336

336:                                              ; preds = %332, %123
  %337 = call i32 @spin_lock_bh(i32* @ibmvscsis_dev_lock)
  %338 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %339 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %338, i32 0, i32 1
  %340 = call i32 @list_del(i32* %339)
  %341 = call i32 @spin_unlock_bh(i32* @ibmvscsis_dev_lock)
  br label %342

342:                                              ; preds = %336, %60
  %343 = load %struct.scsi_info*, %struct.scsi_info** %6, align 8
  %344 = call i32 @kfree(%struct.scsi_info* %343)
  %345 = load i32, i32* %7, align 4
  store i32 %345, i32* %3, align 4
  br label %346

346:                                              ; preds = %342, %291, %15
  %347 = load i32, i32* %3, align 4
  ret i32 %347
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @read_dma_window(%struct.scsi_info*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @srp_target_alloc(%struct.TYPE_11__*, i32*, i32, i32) #1

declare dso_local i32 @ibmvscsis_alloc_cmds(%struct.scsi_info*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ibmvscsis_alloctimer(%struct.scsi_info*) #1

declare dso_local i32 @ibmvscsis_create_command_q(%struct.scsi_info*, i32) #1

declare dso_local i64 @dma_map_single(i32*, %struct.scsi_info*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i64 @h_vioctl(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @create_workqueue(i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.scsi_info*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.scsi_info*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.scsi_info*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ibmvscsis_unregister_command_q(%struct.scsi_info*) #1

declare dso_local i32 @ibmvscsis_destroy_command_q(%struct.scsi_info*) #1

declare dso_local i32 @ibmvscsis_freetimer(%struct.scsi_info*) #1

declare dso_local i32 @ibmvscsis_free_cmds(%struct.scsi_info*) #1

declare dso_local i32 @srp_target_free(%struct.TYPE_11__*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
