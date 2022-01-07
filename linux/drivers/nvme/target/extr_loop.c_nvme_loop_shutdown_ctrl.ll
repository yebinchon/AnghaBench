; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_shutdown_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_shutdown_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_loop_ctrl = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@nvme_cancel_request = common dso_local global i32 0, align 4
@NVME_CTRL_LIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_loop_ctrl*)* @nvme_loop_shutdown_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_loop_shutdown_ctrl(%struct.nvme_loop_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_loop_ctrl*, align 8
  store %struct.nvme_loop_ctrl* %0, %struct.nvme_loop_ctrl** %2, align 8
  %3 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %9, i32 0, i32 1
  %11 = call i32 @nvme_stop_queues(%struct.TYPE_4__* %10)
  %12 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %12, i32 0, i32 2
  %14 = load i32, i32* @nvme_cancel_request, align 4
  %15 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %16 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %15, i32 0, i32 1
  %17 = call i32 @blk_mq_tagset_busy_iter(i32* %13, i32 %14, %struct.TYPE_4__* %16)
  %18 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %19 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %18, i32 0, i32 2
  %20 = call i32 @blk_mq_tagset_wait_completed_request(i32* %19)
  %21 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %22 = call i32 @nvme_loop_destroy_io_queues(%struct.nvme_loop_ctrl* %21)
  br label %23

23:                                               ; preds = %8, %1
  %24 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %25 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @blk_mq_quiesce_queue(i32 %27)
  %29 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %30 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NVME_CTRL_LIVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %37 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %36, i32 0, i32 1
  %38 = call i32 @nvme_shutdown_ctrl(%struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %35, %23
  %40 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %41 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* @nvme_cancel_request, align 4
  %43 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %44 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %43, i32 0, i32 1
  %45 = call i32 @blk_mq_tagset_busy_iter(i32* %41, i32 %42, %struct.TYPE_4__* %44)
  %46 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %47 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %46, i32 0, i32 0
  %48 = call i32 @blk_mq_tagset_wait_completed_request(i32* %47)
  %49 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %50 = call i32 @nvme_loop_destroy_admin_queue(%struct.nvme_loop_ctrl* %49)
  ret void
}

declare dso_local i32 @nvme_stop_queues(%struct.TYPE_4__*) #1

declare dso_local i32 @blk_mq_tagset_busy_iter(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @blk_mq_tagset_wait_completed_request(i32*) #1

declare dso_local i32 @nvme_loop_destroy_io_queues(%struct.nvme_loop_ctrl*) #1

declare dso_local i32 @blk_mq_quiesce_queue(i32) #1

declare dso_local i32 @nvme_shutdown_ctrl(%struct.TYPE_4__*) #1

declare dso_local i32 @nvme_loop_destroy_admin_queue(%struct.nvme_loop_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
