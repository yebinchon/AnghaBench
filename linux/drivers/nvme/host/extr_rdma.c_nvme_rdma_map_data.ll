; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_map_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { %struct.TYPE_7__*, %struct.nvme_rdma_device* }
%struct.TYPE_7__ = type { i64 }
%struct.nvme_rdma_device = type { i32, %struct.TYPE_8__*, %struct.ib_device* }
%struct.TYPE_8__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.request = type { i32 }
%struct.nvme_command = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nvme_rdma_request = type { i32, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@NVME_CMD_SGL_METABUF = common dso_local global i32 0, align 4
@SG_CHUNK_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@IB_PD_UNSAFE_GLOBAL_RKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_queue*, %struct.request*, %struct.nvme_command*)* @nvme_rdma_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_map_data(%struct.nvme_rdma_queue* %0, %struct.request* %1, %struct.nvme_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_rdma_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.nvme_command*, align 8
  %8 = alloca %struct.nvme_rdma_request*, align 8
  %9 = alloca %struct.nvme_rdma_device*, align 8
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.nvme_command* %2, %struct.nvme_command** %7, align 8
  %13 = load %struct.request*, %struct.request** %6, align 8
  %14 = call %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request* %13)
  store %struct.nvme_rdma_request* %14, %struct.nvme_rdma_request** %8, align 8
  %15 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %16 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %15, i32 0, i32 1
  %17 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %16, align 8
  store %struct.nvme_rdma_device* %17, %struct.nvme_rdma_device** %9, align 8
  %18 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %9, align 8
  %19 = getelementptr inbounds %struct.nvme_rdma_device, %struct.nvme_rdma_device* %18, i32 0, i32 2
  %20 = load %struct.ib_device*, %struct.ib_device** %19, align 8
  store %struct.ib_device* %20, %struct.ib_device** %10, align 8
  %21 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %22 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %24 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %23, i32 0, i32 4
  %25 = call i32 @refcount_set(i32* %24, i32 2)
  %26 = load i32, i32* @NVME_CMD_SGL_METABUF, align 4
  %27 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %28 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = call i32 @blk_rq_nr_phys_segments(%struct.request* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %37 = call i32 @nvme_rdma_set_sg_null(%struct.nvme_command* %36)
  store i32 %37, i32* %4, align 4
  br label %173

38:                                               ; preds = %3
  %39 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %40 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %43 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %46 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %45, i32 0, i32 1
  %47 = load %struct.request*, %struct.request** %6, align 8
  %48 = call i32 @blk_rq_nr_phys_segments(%struct.request* %47)
  %49 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %50 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %54 = call i32 @sg_alloc_table_chained(%struct.TYPE_9__* %46, i32 %48, i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %173

60:                                               ; preds = %38
  %61 = load %struct.request*, %struct.request** %6, align 8
  %62 = getelementptr inbounds %struct.request, %struct.request* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.request*, %struct.request** %6, align 8
  %65 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %66 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @blk_rq_map_sg(i32 %63, %struct.request* %64, i32 %68)
  %70 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %71 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %73 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %74 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %78 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.request*, %struct.request** %6, align 8
  %81 = call i32 @rq_dma_dir(%struct.request* %80)
  %82 = call i32 @ib_dma_map_sg(%struct.ib_device* %72, i32 %76, i32 %79, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp sle i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %60
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %12, align 4
  br label %167

91:                                               ; preds = %60
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %9, align 8
  %94 = getelementptr inbounds %struct.nvme_rdma_device, %struct.nvme_rdma_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sle i32 %92, %95
  br i1 %96, label %97, label %143

97:                                               ; preds = %91
  %98 = load %struct.request*, %struct.request** %6, align 8
  %99 = call i64 @rq_data_dir(%struct.request* %98)
  %100 = load i64, i64* @WRITE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %97
  %103 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %104 = call i64 @nvme_rdma_queue_idx(%struct.nvme_rdma_queue* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %102
  %107 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %108 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %106
  %114 = load %struct.request*, %struct.request** %6, align 8
  %115 = call i64 @blk_rq_payload_bytes(%struct.request* %114)
  %116 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %117 = call i64 @nvme_rdma_inline_data_size(%struct.nvme_rdma_queue* %116)
  %118 = icmp sle i64 %115, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %121 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %122 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @nvme_rdma_map_sg_inline(%struct.nvme_rdma_queue* %120, %struct.nvme_rdma_request* %121, %struct.nvme_command* %122, i32 %123)
  store i32 %124, i32* %12, align 4
  br label %149

125:                                              ; preds = %113, %106, %102, %97
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %9, align 8
  %130 = getelementptr inbounds %struct.nvme_rdma_device, %struct.nvme_rdma_device* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @IB_PD_UNSAFE_GLOBAL_RKEY, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %128
  %138 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %139 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %140 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %141 = call i32 @nvme_rdma_map_sg_single(%struct.nvme_rdma_queue* %138, %struct.nvme_rdma_request* %139, %struct.nvme_command* %140)
  store i32 %141, i32* %12, align 4
  br label %149

142:                                              ; preds = %128, %125
  br label %143

143:                                              ; preds = %142, %91
  %144 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %145 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %146 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @nvme_rdma_map_sg_fr(%struct.nvme_rdma_queue* %144, %struct.nvme_rdma_request* %145, %struct.nvme_command* %146, i32 %147)
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %143, %137, %119
  %150 = load i32, i32* %12, align 4
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %155

154:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %173

155:                                              ; preds = %153
  %156 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %157 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %158 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %162 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.request*, %struct.request** %6, align 8
  %165 = call i32 @rq_dma_dir(%struct.request* %164)
  %166 = call i32 @ib_dma_unmap_sg(%struct.ib_device* %156, i32 %160, i32 %163, i32 %165)
  br label %167

167:                                              ; preds = %155, %88
  %168 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %169 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %168, i32 0, i32 1
  %170 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %171 = call i32 @sg_free_table_chained(%struct.TYPE_9__* %169, i32 %170)
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %167, %154, %57, %35
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @blk_rq_nr_phys_segments(%struct.request*) #1

declare dso_local i32 @nvme_rdma_set_sg_null(%struct.nvme_command*) #1

declare dso_local i32 @sg_alloc_table_chained(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @blk_rq_map_sg(i32, %struct.request*, i32) #1

declare dso_local i32 @ib_dma_map_sg(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @rq_dma_dir(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @nvme_rdma_queue_idx(%struct.nvme_rdma_queue*) #1

declare dso_local i64 @blk_rq_payload_bytes(%struct.request*) #1

declare dso_local i64 @nvme_rdma_inline_data_size(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @nvme_rdma_map_sg_inline(%struct.nvme_rdma_queue*, %struct.nvme_rdma_request*, %struct.nvme_command*, i32) #1

declare dso_local i32 @nvme_rdma_map_sg_single(%struct.nvme_rdma_queue*, %struct.nvme_rdma_request*, %struct.nvme_command*) #1

declare dso_local i32 @nvme_rdma_map_sg_fr(%struct.nvme_rdma_queue*, %struct.nvme_rdma_request*, %struct.nvme_command*, i32) #1

declare dso_local i32 @ib_dma_unmap_sg(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @sg_free_table_chained(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
