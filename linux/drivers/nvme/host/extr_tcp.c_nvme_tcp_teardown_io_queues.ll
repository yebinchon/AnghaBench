; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_teardown_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_teardown_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i64 }

@nvme_cancel_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*, i32)* @nvme_tcp_teardown_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_tcp_teardown_io_queues(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sle i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %40

10:                                               ; preds = %2
  %11 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %12 = call i32 @nvme_stop_queues(%struct.nvme_ctrl* %11)
  %13 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %14 = call i32 @nvme_tcp_stop_io_queues(%struct.nvme_ctrl* %13)
  %15 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @nvme_cancel_request, align 4
  %24 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %25 = call i32 @blk_mq_tagset_busy_iter(i64 %22, i32 %23, %struct.nvme_ctrl* %24)
  %26 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %27 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @blk_mq_tagset_wait_completed_request(i64 %28)
  br label %30

30:                                               ; preds = %19, %10
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %35 = call i32 @nvme_start_queues(%struct.nvme_ctrl* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @nvme_tcp_destroy_io_queues(%struct.nvme_ctrl* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %9
  ret void
}

declare dso_local i32 @nvme_stop_queues(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_tcp_stop_io_queues(%struct.nvme_ctrl*) #1

declare dso_local i32 @blk_mq_tagset_busy_iter(i64, i32, %struct.nvme_ctrl*) #1

declare dso_local i32 @blk_mq_tagset_wait_completed_request(i64) #1

declare dso_local i32 @nvme_start_queues(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_tcp_destroy_io_queues(%struct.nvme_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
