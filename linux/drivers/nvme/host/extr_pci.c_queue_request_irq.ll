; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_queue_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_queue_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@use_threaded_interrupts = common dso_local global i64 0, align 8
@nvme_irq_check = common dso_local global i32* null, align 8
@nvme_irq = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"nvme%dq%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*)* @queue_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_request_irq(%struct.nvme_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_queue*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.nvme_queue* %0, %struct.nvme_queue** %3, align 8
  %6 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* @use_threaded_interrupts, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @nvme_irq_check, align 8
  %26 = load i32*, i32** @nvme_irq, align 8
  %27 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %30 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pci_request_irq(%struct.pci_dev* %21, i32 %24, i32* %25, i32* %26, %struct.nvme_queue* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %45

33:                                               ; preds = %1
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %36 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @nvme_irq, align 8
  %39 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %42 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pci_request_irq(%struct.pci_dev* %34, i32 %37, i32* %38, i32* null, %struct.nvme_queue* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %33, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_request_irq(%struct.pci_dev*, i32, i32*, i32*, %struct.nvme_queue*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
