; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i64, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nvme_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvme_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nvme_queue*
  store %struct.nvme_queue* %11, %struct.nvme_queue** %6, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @rmb()
  %14 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %15 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %18 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %2
  %24 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %25 = call i32 @nvme_process_cq(%struct.nvme_queue* %24, i64* %8, i64* %9, i32 -1)
  %26 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %27 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %30 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = call i32 (...) @wmb()
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @nvme_complete_cqes(%struct.nvme_queue* %36, i64 %37, i64 %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %23
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @nvme_process_cq(%struct.nvme_queue*, i64*, i64*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @nvme_complete_cqes(%struct.nvme_queue*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
