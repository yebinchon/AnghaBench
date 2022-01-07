; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_suspend_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_suspend_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@NVMEQ_ENABLED = common dso_local global i32 0, align 4
@NVMEQ_POLLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*)* @nvme_suspend_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_suspend_queue(%struct.nvme_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_queue*, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %3, align 8
  %4 = load i32, i32* @NVMEQ_ENABLED, align 4
  %5 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %5, i32 0, i32 2
  %7 = call i32 @test_and_clear_bit(i32 %4, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %57

10:                                               ; preds = %1
  %11 = call i32 (...) @mb()
  %12 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %10
  %23 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %24 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @blk_mq_quiesce_queue(i64 %36)
  br label %38

38:                                               ; preds = %30, %22, %10
  %39 = load i32, i32* @NVMEQ_POLLED, align 4
  %40 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %40, i32 0, i32 2
  %42 = call i32 @test_and_clear_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @to_pci_dev(i32 %49)
  %51 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %52 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %55 = call i32 @pci_free_irq(i32 %50, i32 %53, %struct.nvme_queue* %54)
  br label %56

56:                                               ; preds = %44, %38
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @blk_mq_quiesce_queue(i64) #1

declare dso_local i32 @pci_free_irq(i32, i32, %struct.nvme_queue*) #1

declare dso_local i32 @to_pci_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
