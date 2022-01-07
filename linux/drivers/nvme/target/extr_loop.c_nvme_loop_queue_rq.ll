; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.nvme_loop_queue*, %struct.TYPE_7__* }
%struct.nvme_loop_queue = type { i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.nvme_ns* }
%struct.nvme_ns = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i32 }
%struct.nvme_loop_iod = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, i32, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@NVME_LOOP_Q_LIVE = common dso_local global i32 0, align 4
@NVME_CMD_SGL_METABUF = common dso_local global i32 0, align 4
@nvme_loop_ops = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i64 0, align 8
@SG_CHUNK_SIZE = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @nvme_loop_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvme_loop_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca %struct.nvme_loop_queue*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.nvme_loop_iod*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %12 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %15, align 8
  store %struct.nvme_ns* %16, %struct.nvme_ns** %6, align 8
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %17, i32 0, i32 0
  %19 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %18, align 8
  store %struct.nvme_loop_queue* %19, %struct.nvme_loop_queue** %7, align 8
  %20 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %21 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %20, i32 0, i32 0
  %22 = load %struct.request*, %struct.request** %21, align 8
  store %struct.request* %22, %struct.request** %8, align 8
  %23 = load %struct.request*, %struct.request** %8, align 8
  %24 = call %struct.nvme_loop_iod* @blk_mq_rq_to_pdu(%struct.request* %23)
  store %struct.nvme_loop_iod* %24, %struct.nvme_loop_iod** %9, align 8
  %25 = load i32, i32* @NVME_LOOP_Q_LIVE, align 4
  %26 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %7, align 8
  %27 = getelementptr inbounds %struct.nvme_loop_queue, %struct.nvme_loop_queue* %26, i32 0, i32 3
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %7, align 8
  %30 = getelementptr inbounds %struct.nvme_loop_queue, %struct.nvme_loop_queue* %29, i32 0, i32 2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.request*, %struct.request** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @nvmf_check_ready(i32* %32, %struct.request* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %2
  %38 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %7, align 8
  %39 = getelementptr inbounds %struct.nvme_loop_queue, %struct.nvme_loop_queue* %38, i32 0, i32 2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.request*, %struct.request** %8, align 8
  %43 = call i64 @nvmf_fail_nonready_command(i32* %41, %struct.request* %42)
  store i64 %43, i64* %3, align 8
  br label %138

44:                                               ; preds = %2
  %45 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %46 = load %struct.request*, %struct.request** %8, align 8
  %47 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %48 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %47, i32 0, i32 4
  %49 = call i64 @nvme_setup_cmd(%struct.nvme_ns* %45, %struct.request* %46, %struct.TYPE_12__* %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i64, i64* %11, align 8
  store i64 %53, i64* %3, align 8
  br label %138

54:                                               ; preds = %44
  %55 = load %struct.request*, %struct.request** %8, align 8
  %56 = call i32 @blk_mq_start_request(%struct.request* %55)
  %57 = load i32, i32* @NVME_CMD_SGL_METABUF, align 4
  %58 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %59 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %57
  store i32 %63, i32* %61, align 4
  %64 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %7, align 8
  %65 = getelementptr inbounds %struct.nvme_loop_queue, %struct.nvme_loop_queue* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %70 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %73 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %72, i32 0, i32 1
  %74 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %7, align 8
  %75 = getelementptr inbounds %struct.nvme_loop_queue, %struct.nvme_loop_queue* %74, i32 0, i32 1
  %76 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %7, align 8
  %77 = getelementptr inbounds %struct.nvme_loop_queue, %struct.nvme_loop_queue* %76, i32 0, i32 0
  %78 = call i32 @nvmet_req_init(%struct.TYPE_11__* %73, i32* %75, i32* %77, i32* @nvme_loop_ops)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %54
  %81 = load i64, i64* @BLK_STS_OK, align 8
  store i64 %81, i64* %3, align 8
  br label %138

82:                                               ; preds = %54
  %83 = load %struct.request*, %struct.request** %8, align 8
  %84 = call i64 @blk_rq_nr_phys_segments(%struct.request* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %133

86:                                               ; preds = %82
  %87 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %88 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %91 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %94 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %93, i32 0, i32 2
  %95 = load %struct.request*, %struct.request** %8, align 8
  %96 = call i64 @blk_rq_nr_phys_segments(%struct.request* %95)
  %97 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %98 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %102 = call i64 @sg_alloc_table_chained(%struct.TYPE_10__* %94, i64 %96, i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %86
  %105 = load %struct.request*, %struct.request** %8, align 8
  %106 = call i32 @nvme_cleanup_cmd(%struct.request* %105)
  %107 = load i64, i64* @BLK_STS_RESOURCE, align 8
  store i64 %107, i64* %3, align 8
  br label %138

108:                                              ; preds = %86
  %109 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %110 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %114 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 4
  %116 = load %struct.request*, %struct.request** %8, align 8
  %117 = getelementptr inbounds %struct.request, %struct.request* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.request*, %struct.request** %8, align 8
  %120 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %121 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @blk_rq_map_sg(i32 %118, %struct.request* %119, i32 %123)
  %125 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %126 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load %struct.request*, %struct.request** %8, align 8
  %129 = call i32 @blk_rq_payload_bytes(%struct.request* %128)
  %130 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %131 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  br label %133

133:                                              ; preds = %108, %82
  %134 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %9, align 8
  %135 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %134, i32 0, i32 0
  %136 = call i32 @schedule_work(i32* %135)
  %137 = load i64, i64* @BLK_STS_OK, align 8
  store i64 %137, i64* %3, align 8
  br label %138

138:                                              ; preds = %133, %104, %80, %52, %37
  %139 = load i64, i64* %3, align 8
  ret i64 %139
}

declare dso_local %struct.nvme_loop_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nvmf_check_ready(i32*, %struct.request*, i32) #1

declare dso_local i64 @nvmf_fail_nonready_command(i32*, %struct.request*) #1

declare dso_local i64 @nvme_setup_cmd(%struct.nvme_ns*, %struct.request*, %struct.TYPE_12__*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @nvmet_req_init(%struct.TYPE_11__*, i32*, i32*, i32*) #1

declare dso_local i64 @blk_rq_nr_phys_segments(%struct.request*) #1

declare dso_local i64 @sg_alloc_table_chained(%struct.TYPE_10__*, i64, i32, i32) #1

declare dso_local i32 @nvme_cleanup_cmd(%struct.request*) #1

declare dso_local i32 @blk_rq_map_sg(i32, %struct.request*, i32) #1

declare dso_local i32 @blk_rq_payload_bytes(%struct.request*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
