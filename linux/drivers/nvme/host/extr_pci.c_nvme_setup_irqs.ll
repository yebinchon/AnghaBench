; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_setup_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_setup_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.irq_affinity = type { i32, %struct.nvme_dev*, i32 }

@nvme_calc_irq_sets = common dso_local global i32 0, align 4
@poll_queues = common dso_local global i32 0, align 4
@HCTX_TYPE_POLL = common dso_local global i64 0, align 8
@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@HCTX_TYPE_READ = common dso_local global i64 0, align 8
@NVME_QUIRK_SINGLE_VECTOR = common dso_local global i32 0, align 4
@PCI_IRQ_ALL_TYPES = common dso_local global i32 0, align 4
@PCI_IRQ_AFFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, i32)* @nvme_setup_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_setup_irqs(%struct.nvme_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.irq_affinity, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pci_dev* @to_pci_dev(i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %6, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %6, i32 0, i32 1
  %16 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  store %struct.nvme_dev* %16, %struct.nvme_dev** %15, align 8
  %17 = getelementptr inbounds %struct.irq_affinity, %struct.irq_affinity* %6, i32 0, i32 2
  %18 = load i32, i32* @nvme_calc_irq_sets, align 4
  store i32 %18, i32* %17, align 8
  %19 = call i32 (...) @num_possible_cpus()
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @poll_queues, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = sub i32 %25, 1
  store i32 %26, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 %29, %30
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %41

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub i32 %37, %38
  %40 = add i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %45 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %50 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 1, i32* %53, align 4
  %54 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %55 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @HCTX_TYPE_READ, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 0, i32* %58, align 4
  %59 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %60 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @NVME_QUIRK_SINGLE_VECTOR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @PCI_IRQ_ALL_TYPES, align 4
  %71 = load i32, i32* @PCI_IRQ_AFFINITY, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @pci_alloc_irq_vectors_affinity(%struct.pci_dev* %68, i32 1, i32 %69, i32 %72, %struct.irq_affinity* %6)
  ret i32 %73
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i32 @pci_alloc_irq_vectors_affinity(%struct.pci_dev*, i32, i32, i32, %struct.irq_affinity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
