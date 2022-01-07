; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_epc_start(%struct.pci_epc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_epc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %3, align 8
  %6 = load %struct.pci_epc*, %struct.pci_epc** %3, align 8
  %7 = call i64 @IS_ERR(%struct.pci_epc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.pci_epc*, %struct.pci_epc** %3, align 8
  %14 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.pci_epc*)**
  %18 = load i32 (%struct.pci_epc*)*, i32 (%struct.pci_epc*)** %17, align 8
  %19 = icmp ne i32 (%struct.pci_epc*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %39

21:                                               ; preds = %12
  %22 = load %struct.pci_epc*, %struct.pci_epc** %3, align 8
  %23 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.pci_epc*, %struct.pci_epc** %3, align 8
  %27 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.pci_epc*)**
  %31 = load i32 (%struct.pci_epc*)*, i32 (%struct.pci_epc*)** %30, align 8
  %32 = load %struct.pci_epc*, %struct.pci_epc** %3, align 8
  %33 = call i32 %31(%struct.pci_epc* %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.pci_epc*, %struct.pci_epc** %3, align 8
  %35 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %21, %20, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @IS_ERR(%struct.pci_epc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
