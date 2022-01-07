; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_set_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_set_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_epc_set_msix(%struct.pci_epc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_epc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %11 = call i64 @IS_ERR_OR_NULL(%struct.pci_epc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %16 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 2048
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19, %13, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %22
  %29 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %30 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.pci_epc*, i64, i32)**
  %34 = load i32 (%struct.pci_epc*, i64, i32)*, i32 (%struct.pci_epc*, i64, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.pci_epc*, i64, i32)* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %58

37:                                               ; preds = %28
  %38 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %39 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %38, i32 0, i32 1
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %43 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.pci_epc*, i64, i32)**
  %47 = load i32 (%struct.pci_epc*, i64, i32)*, i32 (%struct.pci_epc*, i64, i32)** %46, align 8
  %48 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 %47(%struct.pci_epc* %48, i64 %49, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %54 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %53, i32 0, i32 1
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %37, %36, %25
  %59 = load i32, i32* %4, align 4
  ret i32 %59
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
