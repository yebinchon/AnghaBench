; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_handle_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_handle_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i64, i64, i32, i32*, %struct.TYPE_3__*, %struct.nvme_completion* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nvme_completion = type { i64, i32, i32, i32, i32 }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"invalid id %d completed on queue %d\0A\00", align 1
@NVME_AQ_BLK_MQ_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_queue*, i64)* @nvme_handle_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_handle_cqe(%struct.nvme_queue* %0, i64 %1) #0 {
  %3 = alloca %struct.nvme_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nvme_completion*, align 8
  %6 = alloca %struct.request*, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %7, i32 0, i32 5
  %9 = load %struct.nvme_completion*, %struct.nvme_completion** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %9, i64 %10
  store %struct.nvme_completion* %11, %struct.nvme_completion** %5, align 8
  %12 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %13 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %12, i32 0, i32 0
  %14 = load volatile i64, i64* %13, align 8
  %15 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %24 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %30 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %29, i32 0, i32 0
  %31 = load volatile i64, i64* %30, align 8
  %32 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %33 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %32, i32 0, i32 4
  %34 = load volatile i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %35)
  br label %89

37:                                               ; preds = %2
  %38 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %39 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %44 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %43, i32 0, i32 0
  %45 = load volatile i64, i64* %44, align 8
  %46 = load i64, i64* @NVME_AQ_BLK_MQ_DEPTH, align 8
  %47 = icmp sge i64 %45, %46
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi i1 [ false, %37 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %55 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %59 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %58, i32 0, i32 2
  %60 = load volatile i32, i32* %59, align 4
  %61 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %62 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %61, i32 0, i32 1
  %63 = call i32 @nvme_complete_async_event(%struct.TYPE_4__* %57, i32 %60, i32* %62)
  br label %89

64:                                               ; preds = %48
  %65 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %66 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %70 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %69, i32 0, i32 0
  %71 = load volatile i64, i64* %70, align 8
  %72 = call %struct.request* @blk_mq_tag_to_rq(i32 %68, i64 %71)
  store %struct.request* %72, %struct.request** %6, align 8
  %73 = load %struct.request*, %struct.request** %6, align 8
  %74 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %75 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %74, i32 0, i32 3
  %76 = load volatile i32, i32* %75, align 8
  %77 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %78 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @trace_nvme_sq(%struct.request* %73, i32 %76, i32 %79)
  %81 = load %struct.request*, %struct.request** %6, align 8
  %82 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %83 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %82, i32 0, i32 2
  %84 = load volatile i32, i32* %83, align 4
  %85 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %86 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %85, i32 0, i32 1
  %87 = load volatile i32, i32* %86, align 8
  %88 = call i32 @nvme_end_request(%struct.request* %81, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %64, %53, %22
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @nvme_complete_async_event(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local %struct.request* @blk_mq_tag_to_rq(i32, i64) #1

declare dso_local i32 @trace_nvme_sq(%struct.request*, i32, i32) #1

declare dso_local i32 @nvme_end_request(%struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
