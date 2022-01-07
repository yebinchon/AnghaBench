; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_raise_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_raise_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pci_epc*, i64, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_epc_raise_irq(%struct.pci_epc* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_epc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.pci_epc*, %struct.pci_epc** %6, align 8
  %13 = call i64 @IS_ERR_OR_NULL(%struct.pci_epc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.pci_epc*, %struct.pci_epc** %6, align 8
  %18 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %52

24:                                               ; preds = %15
  %25 = load %struct.pci_epc*, %struct.pci_epc** %6, align 8
  %26 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.pci_epc*, i64, i32, i32)*, i32 (%struct.pci_epc*, i64, i32, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.pci_epc*, i64, i32, i32)* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %52

32:                                               ; preds = %24
  %33 = load %struct.pci_epc*, %struct.pci_epc** %6, align 8
  %34 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %33, i32 0, i32 1
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.pci_epc*, %struct.pci_epc** %6, align 8
  %38 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.pci_epc*, i64, i32, i32)*, i32 (%struct.pci_epc*, i64, i32, i32)** %40, align 8
  %42 = load %struct.pci_epc*, %struct.pci_epc** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 %41(%struct.pci_epc* %42, i64 %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.pci_epc*, %struct.pci_epc** %6, align 8
  %48 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %47, i32 0, i32 1
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %32, %31, %21
  %53 = load i32, i32* %5, align 4
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
