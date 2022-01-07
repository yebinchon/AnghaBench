; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_deinit_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_deinit_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i32, %struct.intel_ntb_dev*, %struct.intel_ntb_dev*, i32, %struct.TYPE_6__*, i64, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 (i32, i64)* }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_ntb_dev*)* @ndev_deinit_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndev_deinit_isr(%struct.intel_ntb_dev* %0) #0 {
  %2 = alloca %struct.intel_ntb_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %2, align 8
  %5 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %6 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %5, i32 0, i32 9
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %10 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %13 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %15 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %14, i32 0, i32 7
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32 (i32, i64)*, i32 (i32, i64)** %17, align 8
  %19 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %20 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %23 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %26 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %25, i32 0, i32 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %24, %29
  %31 = call i32 %18(i32 %21, i64 %30)
  %32 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %33 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %32, i32 0, i32 2
  %34 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %33, align 8
  %35 = icmp ne %struct.intel_ntb_dev* %34, null
  br i1 %35, label %36, label %71

36:                                               ; preds = %1
  %37 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %38 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %44, %36
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %46 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %45, i32 0, i32 2
  %47 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %47, i64 %49
  %51 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %54 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %53, i32 0, i32 1
  %55 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %55, i64 %57
  %59 = call i32 @free_irq(i32 %52, %struct.intel_ntb_dev* %58)
  br label %40

60:                                               ; preds = %40
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = call i32 @pci_disable_msix(%struct.pci_dev* %61)
  %63 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %64 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %63, i32 0, i32 2
  %65 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %64, align 8
  %66 = call i32 @kfree(%struct.intel_ntb_dev* %65)
  %67 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %68 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %67, i32 0, i32 1
  %69 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %68, align 8
  %70 = call i32 @kfree(%struct.intel_ntb_dev* %69)
  br label %84

71:                                               ; preds = %1
  %72 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %76 = call i32 @free_irq(i32 %74, %struct.intel_ntb_dev* %75)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = call i64 @pci_dev_msi_enabled(%struct.pci_dev* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %82 = call i32 @pci_disable_msi(%struct.pci_dev* %81)
  br label %83

83:                                               ; preds = %80, %71
  br label %84

84:                                               ; preds = %83, %60
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.intel_ntb_dev*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.intel_ntb_dev*) #1

declare dso_local i64 @pci_dev_msi_enabled(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
