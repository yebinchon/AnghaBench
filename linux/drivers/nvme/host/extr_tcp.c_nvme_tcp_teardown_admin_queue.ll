; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_teardown_admin_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_teardown_admin_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i64 }

@nvme_cancel_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*, i32)* @nvme_tcp_teardown_admin_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_tcp_teardown_admin_queue(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @blk_mq_quiesce_queue(i32 %7)
  %9 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %10 = call i32 @nvme_tcp_stop_queue(%struct.nvme_ctrl* %9, i32 0)
  %11 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @nvme_cancel_request, align 4
  %20 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %21 = call i32 @blk_mq_tagset_busy_iter(i64 %18, i32 %19, %struct.nvme_ctrl* %20)
  %22 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @blk_mq_tagset_wait_completed_request(i64 %24)
  br label %26

26:                                               ; preds = %15, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @blk_mq_unquiesce_queue(i32 %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @nvme_tcp_destroy_admin_queue(%struct.nvme_ctrl* %35, i32 %36)
  ret void
}

declare dso_local i32 @blk_mq_quiesce_queue(i32) #1

declare dso_local i32 @nvme_tcp_stop_queue(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @blk_mq_tagset_busy_iter(i64, i32, %struct.nvme_ctrl*) #1

declare dso_local i32 @blk_mq_tagset_wait_completed_request(i64) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i32) #1

declare dso_local i32 @nvme_tcp_destroy_admin_queue(%struct.nvme_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
