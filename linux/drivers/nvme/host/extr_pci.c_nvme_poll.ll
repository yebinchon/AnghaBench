; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.nvme_queue* }
%struct.nvme_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*)* @nvme_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_poll(%struct.blk_mq_hw_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca %struct.nvme_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %8, i32 0, i32 0
  %10 = load %struct.nvme_queue*, %struct.nvme_queue** %9, align 8
  store %struct.nvme_queue* %10, %struct.nvme_queue** %4, align 8
  %11 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %12 = call i32 @nvme_cqe_pending(%struct.nvme_queue* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %20 = call i32 @nvme_process_cq(%struct.nvme_queue* %19, i32* %5, i32* %6, i32 -1)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @nvme_complete_cqes(%struct.nvme_queue* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %15, %14
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @nvme_cqe_pending(%struct.nvme_queue*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nvme_process_cq(%struct.nvme_queue*, i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nvme_complete_cqes(%struct.nvme_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
