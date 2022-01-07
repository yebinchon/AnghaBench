; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_map_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_map_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_epc_map_addr(%struct.pci_epc* %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_epc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.pci_epc*, %struct.pci_epc** %7, align 8
  %15 = call i64 @IS_ERR_OR_NULL(%struct.pci_epc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.pci_epc*, %struct.pci_epc** %7, align 8
  %20 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %57

26:                                               ; preds = %17
  %27 = load %struct.pci_epc*, %struct.pci_epc** %7, align 8
  %28 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.pci_epc*, i64, i32, i32, i64)**
  %32 = load i32 (%struct.pci_epc*, i64, i32, i32, i64)*, i32 (%struct.pci_epc*, i64, i32, i32, i64)** %31, align 8
  %33 = icmp ne i32 (%struct.pci_epc*, i64, i32, i32, i64)* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %57

35:                                               ; preds = %26
  %36 = load %struct.pci_epc*, %struct.pci_epc** %7, align 8
  %37 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %36, i32 0, i32 1
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.pci_epc*, %struct.pci_epc** %7, align 8
  %41 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.pci_epc*, i64, i32, i32, i64)**
  %45 = load i32 (%struct.pci_epc*, i64, i32, i32, i64)*, i32 (%struct.pci_epc*, i64, i32, i32, i64)** %44, align 8
  %46 = load %struct.pci_epc*, %struct.pci_epc** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i64, i64* %11, align 8
  %51 = call i32 %45(%struct.pci_epc* %46, i64 %47, i32 %48, i32 %49, i64 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.pci_epc*, %struct.pci_epc** %7, align 8
  %53 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %52, i32 0, i32 1
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %35, %34, %23
  %58 = load i32, i32* %6, align 4
  ret i32 %58
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
