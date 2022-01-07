; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_process_nvme_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_process_nvme_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { %struct.TYPE_10__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nvme_completion = type { i64, i32, i32 }
%struct.ib_wc = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.request = type { i32 }
%struct.nvme_rdma_request = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"tag 0x%x on QP %#x not found\0A\00", align 1
@IB_WC_WITH_INVALIDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Bogus remote invalidation for rkey %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Queueing INV WR for rkey %#x failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_rdma_queue*, %struct.nvme_completion*, %struct.ib_wc*)* @nvme_rdma_process_nvme_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_rdma_process_nvme_rsp(%struct.nvme_rdma_queue* %0, %struct.nvme_completion* %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.nvme_rdma_queue*, align 8
  %5 = alloca %struct.nvme_completion*, align 8
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.nvme_rdma_request*, align 8
  %9 = alloca i32, align 4
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %4, align 8
  store %struct.nvme_completion* %1, %struct.nvme_completion** %5, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %10 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %11 = call i32 @nvme_rdma_tagset(%struct.nvme_rdma_queue* %10)
  %12 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %13 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.request* @blk_mq_tag_to_rq(i32 %11, i64 %14)
  store %struct.request* %15, %struct.request** %7, align 8
  %16 = load %struct.request*, %struct.request** %7, align 8
  %17 = icmp ne %struct.request* %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %3
  %19 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %29 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %32)
  %34 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %35 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = call i32 @nvme_rdma_error_recovery(%struct.TYPE_10__* %36)
  br label %137

38:                                               ; preds = %3
  %39 = load %struct.request*, %struct.request** %7, align 8
  %40 = call %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request* %39)
  store %struct.nvme_rdma_request* %40, %struct.nvme_rdma_request** %8, align 8
  %41 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %42 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %45 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %47 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %50 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %52 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IB_WC_WITH_INVALIDATE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %38
  %58 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %59 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %63 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %62, i32 0, i32 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %61, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %57
  %72 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %73 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %79 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %78, i32 0, i32 3
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %85 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = call i32 @nvme_rdma_error_recovery(%struct.TYPE_10__* %86)
  br label %88

88:                                               ; preds = %71, %57
  br label %123

89:                                               ; preds = %38
  %90 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %91 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %90, i32 0, i32 3
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = icmp ne %struct.TYPE_9__* %92, null
  br i1 %93, label %94, label %122

94:                                               ; preds = %89
  %95 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %96 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %97 = call i32 @nvme_rdma_inv_rkey(%struct.nvme_rdma_queue* %95, %struct.nvme_rdma_request* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %94
  %104 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %105 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %111 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %110, i32 0, i32 3
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %114, i32 %115)
  %117 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %118 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = call i32 @nvme_rdma_error_recovery(%struct.TYPE_10__* %119)
  br label %121

121:                                              ; preds = %103, %94
  br label %137

122:                                              ; preds = %89
  br label %123

123:                                              ; preds = %122, %88
  %124 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %125 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %124, i32 0, i32 2
  %126 = call i64 @refcount_dec_and_test(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.request*, %struct.request** %7, align 8
  %130 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %131 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %8, align 8
  %134 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @nvme_end_request(%struct.request* %129, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %18, %121, %128, %123
  ret void
}

declare dso_local %struct.request* @blk_mq_tag_to_rq(i32, i64) #1

declare dso_local i32 @nvme_rdma_tagset(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

declare dso_local i32 @nvme_rdma_error_recovery(%struct.TYPE_10__*) #1

declare dso_local %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvme_rdma_inv_rkey(%struct.nvme_rdma_queue*, %struct.nvme_rdma_request*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @nvme_end_request(%struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
