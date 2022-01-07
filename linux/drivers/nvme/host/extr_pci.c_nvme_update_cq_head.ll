; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_update_cq_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_update_cq_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_queue*)* @nvme_update_cq_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_update_cq_head(%struct.nvme_queue* %0) #0 {
  %2 = alloca %struct.nvme_queue*, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %2, align 8
  %3 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %7 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  %10 = icmp eq i32 %5, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %21 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %24 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
