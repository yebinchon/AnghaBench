; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_handle_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_handle_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_tcp_rsp_pdu = type { %struct.nvme_completion }
%struct.nvme_completion = type { i64, i32, i32 }

@NVME_AQ_BLK_MQ_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_queue*, %struct.nvme_tcp_rsp_pdu*)* @nvme_tcp_handle_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_handle_comp(%struct.nvme_tcp_queue* %0, %struct.nvme_tcp_rsp_pdu* %1) #0 {
  %3 = alloca %struct.nvme_tcp_queue*, align 8
  %4 = alloca %struct.nvme_tcp_rsp_pdu*, align 8
  %5 = alloca %struct.nvme_completion*, align 8
  %6 = alloca i32, align 4
  store %struct.nvme_tcp_queue* %0, %struct.nvme_tcp_queue** %3, align 8
  store %struct.nvme_tcp_rsp_pdu* %1, %struct.nvme_tcp_rsp_pdu** %4, align 8
  %7 = load %struct.nvme_tcp_rsp_pdu*, %struct.nvme_tcp_rsp_pdu** %4, align 8
  %8 = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, %struct.nvme_tcp_rsp_pdu* %7, i32 0, i32 0
  store %struct.nvme_completion* %8, %struct.nvme_completion** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %10 = call i64 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %14 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NVME_AQ_BLK_MQ_DEPTH, align 8
  %17 = icmp sge i64 %15, %16
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ false, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %29 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %32 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %31, i32 0, i32 1
  %33 = call i32 @nvme_complete_async_event(i32* %27, i32 %30, i32* %32)
  br label %38

34:                                               ; preds = %18
  %35 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %36 = load %struct.nvme_completion*, %struct.nvme_completion** %5, align 8
  %37 = call i32 @nvme_tcp_process_nvme_cqe(%struct.nvme_tcp_queue* %35, %struct.nvme_completion* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %23
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nvme_tcp_queue_id(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @nvme_complete_async_event(i32*, i32, i32*) #1

declare dso_local i32 @nvme_tcp_process_nvme_cqe(%struct.nvme_tcp_queue*, %struct.nvme_completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
