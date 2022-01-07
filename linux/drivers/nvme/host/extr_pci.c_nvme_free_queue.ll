; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_free_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i8*, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@NVMEQ_SQ_CMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_queue*)* @nvme_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_free_queue(%struct.nvme_queue* %0) #0 {
  %2 = alloca %struct.nvme_queue*, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %2, align 8
  %3 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %9 = call i32 @CQ_SIZE(%struct.nvme_queue* %8)
  %10 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dma_free_coherent(i32 %7, i32 %9, i8* %13, i32 %16)
  %18 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %19 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %57

23:                                               ; preds = %1
  %24 = load i32, i32* @NVMEQ_SQ_CMB, align 4
  %25 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %26 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %25, i32 0, i32 3
  %27 = call i64 @test_and_clear_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %31 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @to_pci_dev(i32 %34)
  %36 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %37 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %40 = call i32 @SQ_SIZE(%struct.nvme_queue* %39)
  %41 = call i32 @pci_free_p2pmem(i32 %35, i8* %38, i32 %40)
  br label %57

42:                                               ; preds = %23
  %43 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %44 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %49 = call i32 @SQ_SIZE(%struct.nvme_queue* %48)
  %50 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %51 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.nvme_queue*, %struct.nvme_queue** %2, align 8
  %54 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dma_free_coherent(i32 %47, i32 %49, i8* %52, i32 %55)
  br label %57

57:                                               ; preds = %22, %42, %29
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @CQ_SIZE(%struct.nvme_queue*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pci_free_p2pmem(i32, i8*, i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local i32 @SQ_SIZE(%struct.nvme_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
