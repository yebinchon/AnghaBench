; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_map_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_map_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.TYPE_7__*, %struct.nvme_rdma_ctrl* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.nvme_rdma_ctrl = type { i64*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.nvmf_ctrl_options* }
%struct.nvmf_ctrl_options = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@HCTX_TYPE_READ = common dso_local global i64 0, align 8
@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@HCTX_TYPE_POLL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"mapped %d/%d/%d default/read/poll queues.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*)* @nvme_rdma_map_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_map_queues(%struct.blk_mq_tag_set* %0) #0 {
  %2 = alloca %struct.blk_mq_tag_set*, align 8
  %3 = alloca %struct.nvme_rdma_ctrl*, align 8
  %4 = alloca %struct.nvmf_ctrl_options*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %2, align 8
  %5 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %5, i32 0, i32 1
  %7 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  store %struct.nvme_rdma_ctrl* %7, %struct.nvme_rdma_ctrl** %3, align 8
  %8 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %10, align 8
  store %struct.nvmf_ctrl_options* %11, %struct.nvmf_ctrl_options** %4, align 8
  %12 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %13 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %1
  %17 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @HCTX_TYPE_READ, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %16
  %25 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %32 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i64 %30, i64* %36, align 8
  %37 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %38 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @HCTX_TYPE_READ, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %50 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i64, i64* @HCTX_TYPE_READ, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i64 %48, i64* %54, align 8
  %55 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %62 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i64, i64* @HCTX_TYPE_READ, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i64 %60, i64* %66, align 8
  br label %104

67:                                               ; preds = %16, %1
  %68 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %69 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %75 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i64 %73, i64* %79, align 8
  %80 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %81 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %87 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %93 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i64, i64* @HCTX_TYPE_READ, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i64 %91, i64* %97, align 8
  %98 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %99 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i64, i64* @HCTX_TYPE_READ, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %67, %24
  %105 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %106 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %108
  %110 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %111 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %110, i32 0, i32 2
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @blk_mq_rdma_map_queues(%struct.TYPE_7__* %109, i32 %114, i32 0)
  %116 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %117 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i64, i64* @HCTX_TYPE_READ, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %119
  %121 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %122 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %121, i32 0, i32 2
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @blk_mq_rdma_map_queues(%struct.TYPE_7__* %120, i32 %125, i32 0)
  %127 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %128 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %177

131:                                              ; preds = %104
  %132 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %133 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %177

139:                                              ; preds = %131
  %140 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %141 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %147 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %146, i32 0, i32 0
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i64 %145, i64* %151, align 8
  %152 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %153 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %159 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* @HCTX_TYPE_READ, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %157, %163
  %165 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %166 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  store i64 %164, i64* %170, align 8
  %171 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %172 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %171, i32 0, i32 0
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %174
  %176 = call i32 @blk_mq_map_queues(%struct.TYPE_7__* %175)
  br label %177

177:                                              ; preds = %139, %131, %104
  %178 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %179 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %183 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %189 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load i64, i64* @HCTX_TYPE_READ, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %195 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %194, i32 0, i32 0
  %196 = load i64*, i64** %195, align 8
  %197 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %198 = getelementptr inbounds i64, i64* %196, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @dev_info(i32 %181, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %187, i64 %193, i64 %199)
  ret i32 0
}

declare dso_local i32 @blk_mq_rdma_map_queues(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @blk_mq_map_queues(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
