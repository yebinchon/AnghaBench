; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_get_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_get_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_epc_get_msi(%struct.pci_epc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %9 = call i64 @IS_ERR_OR_NULL(%struct.pci_epc* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %14 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %52

18:                                               ; preds = %11
  %19 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %20 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.pci_epc*, i64)**
  %24 = load i32 (%struct.pci_epc*, i64)*, i32 (%struct.pci_epc*, i64)** %23, align 8
  %25 = icmp ne i32 (%struct.pci_epc*, i64)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %52

27:                                               ; preds = %18
  %28 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %29 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %28, i32 0, i32 1
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %33 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.pci_epc*, i64)**
  %37 = load i32 (%struct.pci_epc*, i64)*, i32 (%struct.pci_epc*, i64)** %36, align 8
  %38 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 %37(%struct.pci_epc* %38, i64 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %42 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %41, i32 0, i32 1
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %52

48:                                               ; preds = %27
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 1, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %47, %26, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.pci_epc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
