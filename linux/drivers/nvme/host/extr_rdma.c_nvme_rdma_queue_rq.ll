; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.nvme_rdma_queue*, %struct.TYPE_8__* }
%struct.nvme_rdma_queue = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.TYPE_8__ = type { %struct.nvme_ns* }
%struct.nvme_ns = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i64 }
%struct.nvme_rdma_request = type { %struct.nvme_rdma_qe, %struct.TYPE_12__, i64, i32, i32 }
%struct.nvme_rdma_qe = type { i32, %struct.TYPE_11__, %struct.nvme_command* }
%struct.TYPE_11__ = type { i32 }
%struct.nvme_command = type { i32 }
%struct.TYPE_12__ = type { i32 }

@NVME_RDMA_Q_LIVE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed to map data (%d)\0A\00", align 1
@nvme_rdma_send_done = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @nvme_rdma_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvme_rdma_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca %struct.nvme_rdma_queue*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.nvme_rdma_request*, align 8
  %10 = alloca %struct.nvme_rdma_qe*, align 8
  %11 = alloca %struct.nvme_command*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %16 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.nvme_ns*, %struct.nvme_ns** %19, align 8
  store %struct.nvme_ns* %20, %struct.nvme_ns** %6, align 8
  %21 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %21, i32 0, i32 0
  %23 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %22, align 8
  store %struct.nvme_rdma_queue* %23, %struct.nvme_rdma_queue** %7, align 8
  %24 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %25 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %24, i32 0, i32 0
  %26 = load %struct.request*, %struct.request** %25, align 8
  store %struct.request* %26, %struct.request** %8, align 8
  %27 = load %struct.request*, %struct.request** %8, align 8
  %28 = call %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request* %27)
  store %struct.nvme_rdma_request* %28, %struct.nvme_rdma_request** %9, align 8
  %29 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %9, align 8
  %30 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %29, i32 0, i32 0
  store %struct.nvme_rdma_qe* %30, %struct.nvme_rdma_qe** %10, align 8
  %31 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %10, align 8
  %32 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %31, i32 0, i32 2
  %33 = load %struct.nvme_command*, %struct.nvme_command** %32, align 8
  store %struct.nvme_command* %33, %struct.nvme_command** %11, align 8
  %34 = load i32, i32* @NVME_RDMA_Q_LIVE, align 4
  %35 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %7, align 8
  %36 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %35, i32 0, i32 2
  %37 = call i32 @test_bit(i32 %34, i32* %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.request*, %struct.request** %8, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON_ONCE(i32 %42)
  %44 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %7, align 8
  %45 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.request*, %struct.request** %8, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @nvmf_check_ready(%struct.TYPE_13__* %47, %struct.request* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %2
  %53 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %7, align 8
  %54 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.request*, %struct.request** %8, align 8
  %58 = call i64 @nvmf_fail_nonready_command(%struct.TYPE_13__* %56, %struct.request* %57)
  store i64 %58, i64* %3, align 8
  br label %187

59:                                               ; preds = %2
  %60 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %7, align 8
  %61 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.ib_device*, %struct.ib_device** %63, align 8
  store %struct.ib_device* %64, %struct.ib_device** %12, align 8
  %65 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %66 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %9, align 8
  %67 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %67, i32 0, i32 2
  %69 = load %struct.nvme_command*, %struct.nvme_command** %68, align 8
  %70 = load i32, i32* @DMA_TO_DEVICE, align 4
  %71 = call i32 @ib_dma_map_single(%struct.ib_device* %65, %struct.nvme_command* %69, i32 4, i32 %70)
  %72 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %9, align 8
  %73 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %76 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %9, align 8
  %77 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ib_dma_mapping_error(%struct.ib_device* %75, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %59
  %85 = load i64, i64* @BLK_STS_RESOURCE, align 8
  store i64 %85, i64* %3, align 8
  br label %187

86:                                               ; preds = %59
  %87 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %88 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %10, align 8
  %89 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DMA_TO_DEVICE, align 4
  %92 = call i32 @ib_dma_sync_single_for_cpu(%struct.ib_device* %87, i32 %90, i32 4, i32 %91)
  %93 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %94 = load %struct.request*, %struct.request** %8, align 8
  %95 = load %struct.nvme_command*, %struct.nvme_command** %11, align 8
  %96 = call i64 @nvme_setup_cmd(%struct.nvme_ns* %93, %struct.request* %94, %struct.nvme_command* %95)
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %14, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %178

100:                                              ; preds = %86
  %101 = load %struct.request*, %struct.request** %8, align 8
  %102 = call i32 @blk_mq_start_request(%struct.request* %101)
  %103 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %7, align 8
  %104 = load %struct.request*, %struct.request** %8, align 8
  %105 = load %struct.nvme_command*, %struct.nvme_command** %11, align 8
  %106 = call i32 @nvme_rdma_map_data(%struct.nvme_rdma_queue* %103, %struct.request* %104, %struct.nvme_command* %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp slt i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %100
  %113 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %7, align 8
  %114 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load %struct.request*, %struct.request** %8, align 8
  %122 = call i32 @nvme_cleanup_cmd(%struct.request* %121)
  br label %163

123:                                              ; preds = %100
  %124 = load i32, i32* @nvme_rdma_send_done, align 4
  %125 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %10, align 8
  %126 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  %128 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %129 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %10, align 8
  %130 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @DMA_TO_DEVICE, align 4
  %133 = call i32 @ib_dma_sync_single_for_device(%struct.ib_device* %128, i32 %131, i32 4, i32 %132)
  %134 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %7, align 8
  %135 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %10, align 8
  %136 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %9, align 8
  %137 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %9, align 8
  %140 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %9, align 8
  %143 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %123
  %147 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %9, align 8
  %148 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  br label %151

150:                                              ; preds = %123
  br label %151

151:                                              ; preds = %150, %146
  %152 = phi i32* [ %149, %146 ], [ null, %150 ]
  %153 = call i32 @nvme_rdma_post_send(%struct.nvme_rdma_queue* %134, %struct.nvme_rdma_qe* %135, i32 %138, i32 %141, i32* %152)
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %7, align 8
  %159 = load %struct.request*, %struct.request** %8, align 8
  %160 = call i32 @nvme_rdma_unmap_data(%struct.nvme_rdma_queue* %158, %struct.request* %159)
  br label %163

161:                                              ; preds = %151
  %162 = load i64, i64* @BLK_STS_OK, align 8
  store i64 %162, i64* %3, align 8
  br label %187

163:                                              ; preds = %157, %112
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* @EAGAIN, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %168, %163
  %174 = load i64, i64* @BLK_STS_RESOURCE, align 8
  store i64 %174, i64* %14, align 8
  br label %177

175:                                              ; preds = %168
  %176 = load i64, i64* @BLK_STS_IOERR, align 8
  store i64 %176, i64* %14, align 8
  br label %177

177:                                              ; preds = %175, %173
  br label %178

178:                                              ; preds = %177, %99
  %179 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %180 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %9, align 8
  %181 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @DMA_TO_DEVICE, align 4
  %185 = call i32 @ib_dma_unmap_single(%struct.ib_device* %179, i32 %183, i32 4, i32 %184)
  %186 = load i64, i64* %14, align 8
  store i64 %186, i64* %3, align 8
  br label %187

187:                                              ; preds = %178, %161, %84, %52
  %188 = load i64, i64* %3, align 8
  ret i64 %188
}

declare dso_local %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nvmf_check_ready(%struct.TYPE_13__*, %struct.request*, i32) #1

declare dso_local i64 @nvmf_fail_nonready_command(%struct.TYPE_13__*, %struct.request*) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, %struct.nvme_command*, i32, i32) #1

declare dso_local i32 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i64 @nvme_setup_cmd(%struct.nvme_ns*, %struct.request*, %struct.nvme_command*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @nvme_rdma_map_data(%struct.nvme_rdma_queue*, %struct.request*, %struct.nvme_command*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @nvme_cleanup_cmd(%struct.request*) #1

declare dso_local i32 @ib_dma_sync_single_for_device(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @nvme_rdma_post_send(%struct.nvme_rdma_queue*, %struct.nvme_rdma_qe*, i32, i32, i32*) #1

declare dso_local i32 @nvme_rdma_unmap_data(%struct.nvme_rdma_queue*, %struct.request*) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
