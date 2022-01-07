; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_queue_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_queue_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { %struct.TYPE_2__*, %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingsState* }
%struct.TYPE_2__ = type { i32 }
%struct.PVSCSIRingReqDesc = type { i32, i64, i32, i32, i32, i32, i64, i64, i32*, i32, i32 }
%struct.PVSCSIRingsState = type { i32, i32, i32 }
%struct.pvscsi_ctx = type { i64 }
%struct.scsi_cmnd = type { i64, i64, i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"vmw_pvscsi: ring full: reqProdIdx=%d cmpConsIdx=%d\0A\00", align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"vmw_pvscsi: Failed to map sense buffer for DMA.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SIMPLE_QUEUE_TAG = common dso_local global i32 0, align 4
@PVSCSI_FLAG_CMD_DIR_TOHOST = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@PVSCSI_FLAG_CMD_DIR_TODEVICE = common dso_local global i64 0, align 8
@DMA_NONE = common dso_local global i64 0, align 8
@PVSCSI_FLAG_CMD_DIR_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_adapter*, %struct.pvscsi_ctx*, %struct.scsi_cmnd*)* @pvscsi_queue_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_queue_ring(%struct.pvscsi_adapter* %0, %struct.pvscsi_ctx* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvscsi_adapter*, align 8
  %6 = alloca %struct.pvscsi_ctx*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.PVSCSIRingsState*, align 8
  %9 = alloca %struct.PVSCSIRingReqDesc*, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca i32, align 4
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %5, align 8
  store %struct.pvscsi_ctx* %1, %struct.pvscsi_ctx** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  %12 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %12, i32 0, i32 2
  %14 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %13, align 8
  store %struct.PVSCSIRingsState* %14, %struct.PVSCSIRingsState** %8, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 4
  %17 = load %struct.scsi_device*, %struct.scsi_device** %16, align 8
  store %struct.scsi_device* %17, %struct.scsi_device** %10, align 8
  %18 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %8, align 8
  %19 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %8, align 8
  %22 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %8, align 8
  %25 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = load i32, i32* %11, align 4
  %29 = shl i32 1, %28
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %34 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %8, align 8
  %35 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %8, align 8
  %38 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %32, %struct.scsi_cmnd* %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  store i32 -1, i32* %4, align 4
  br label %217

41:                                               ; preds = %3
  %42 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %42, i32 0, i32 1
  %44 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %43, align 8
  %45 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %8, align 8
  %46 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @MASK(i32 %48)
  %50 = and i32 %47, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %44, i64 %51
  store %struct.PVSCSIRingReqDesc* %52, %struct.PVSCSIRingReqDesc** %9, align 8
  %53 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %57 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 4
  %58 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %62 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 8
  %63 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %64 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %63, i32 0, i32 8
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @memset(i32* %65, i32 0, i32 8)
  %67 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %68 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %71 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %70, i32 0, i32 8
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %117

78:                                               ; preds = %41
  %79 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %87 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %88 = call i64 @dma_map_single(i32* %82, i64 %85, i64 %86, i64 %87)
  %89 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %92 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %96 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @dma_mapping_error(i32* %94, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %78
  %101 = load i32, i32* @KERN_ERR, align 4
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %103 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %101, %struct.scsi_cmnd* %102, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %105 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %217

108:                                              ; preds = %78
  %109 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %113 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %112, i32 0, i32 6
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %115 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %116 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %115, i32 0, i32 7
  store i64 %114, i64* %116, align 8
  br label %122

117:                                              ; preds = %41
  %118 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %119 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %118, i32 0, i32 7
  store i64 0, i64* %119, align 8
  %120 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %121 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %120, i32 0, i32 6
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %117, %108
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %124 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %127 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = call i32 (...) @smp_processor_id()
  %129 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %130 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %132 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %135 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %138 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @memcpy(i32 %133, i32 %136, i32 %139)
  %141 = load i32, i32* @SIMPLE_QUEUE_TAG, align 4
  %142 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %143 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %145 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %122
  %150 = load i64, i64* @PVSCSI_FLAG_CMD_DIR_TOHOST, align 8
  %151 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %152 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  br label %178

153:                                              ; preds = %122
  %154 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %155 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @DMA_TO_DEVICE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load i64, i64* @PVSCSI_FLAG_CMD_DIR_TODEVICE, align 8
  %161 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %162 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  br label %177

163:                                              ; preds = %153
  %164 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %165 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @DMA_NONE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i64, i64* @PVSCSI_FLAG_CMD_DIR_NONE, align 8
  %171 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %172 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  br label %176

173:                                              ; preds = %163
  %174 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %175 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %174, i32 0, i32 1
  store i64 0, i64* %175, align 8
  br label %176

176:                                              ; preds = %173, %169
  br label %177

177:                                              ; preds = %176, %159
  br label %178

178:                                              ; preds = %177, %149
  %179 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %180 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %181 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %182 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %183 = call i64 @pvscsi_map_buffers(%struct.pvscsi_adapter* %179, %struct.pvscsi_ctx* %180, %struct.scsi_cmnd* %181, %struct.PVSCSIRingReqDesc* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %178
  %186 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %187 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %185
  %191 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %192 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %191, i32 0, i32 0
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %196 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %199 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %200 = call i32 @dma_unmap_single(i32* %194, i64 %197, i64 %198, i64 %199)
  %201 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %202 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %201, i32 0, i32 0
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %190, %185
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %4, align 4
  br label %217

206:                                              ; preds = %178
  %207 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %208 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %6, align 8
  %209 = call i32 @pvscsi_map_context(%struct.pvscsi_adapter* %207, %struct.pvscsi_ctx* %208)
  %210 = load %struct.PVSCSIRingReqDesc*, %struct.PVSCSIRingReqDesc** %9, align 8
  %211 = getelementptr inbounds %struct.PVSCSIRingReqDesc, %struct.PVSCSIRingReqDesc* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = call i32 (...) @barrier()
  %213 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %8, align 8
  %214 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %206, %203, %100, %31
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, ...) #1

declare dso_local i32 @MASK(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @dma_map_single(i32*, i64, i64, i64) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @pvscsi_map_buffers(%struct.pvscsi_adapter*, %struct.pvscsi_ctx*, %struct.scsi_cmnd*, %struct.PVSCSIRingReqDesc*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i64, i64) #1

declare dso_local i32 @pvscsi_map_context(%struct.pvscsi_adapter*, %struct.pvscsi_ctx*) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
