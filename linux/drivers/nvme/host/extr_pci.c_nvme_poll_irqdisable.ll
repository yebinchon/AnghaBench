; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_poll_irqdisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_poll_irqdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@NVMEQ_POLLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*, i32)* @nvme_poll_irqdisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_poll_irqdisable(%struct.nvme_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvme_queue* %0, %struct.nvme_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load i32, i32* @NVMEQ_POLLED, align 4
  %16 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %22 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @nvme_process_cq(%struct.nvme_queue* %24, i32* %6, i32* %7, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  br label %46

30:                                               ; preds = %2
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %33 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pci_irq_vector(%struct.pci_dev* %31, i32 %34)
  %36 = call i32 @disable_irq(i32 %35)
  %37 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @nvme_process_cq(%struct.nvme_queue* %37, i32* %6, i32* %7, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %42 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pci_irq_vector(%struct.pci_dev* %40, i32 %43)
  %45 = call i32 @enable_irq(i32 %44)
  br label %46

46:                                               ; preds = %30, %20
  %47 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @nvme_complete_cqes(%struct.nvme_queue* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nvme_process_cq(%struct.nvme_queue*, i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @nvme_complete_cqes(%struct.nvme_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
