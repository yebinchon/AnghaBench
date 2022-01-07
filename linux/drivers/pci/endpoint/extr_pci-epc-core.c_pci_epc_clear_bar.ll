; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_clear_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_clear_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)* }
%struct.pci_epf_bar = type { i64, i32 }

@BAR_5 = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_epc_clear_bar(%struct.pci_epc* %0, i64 %1, %struct.pci_epf_bar* %2) #0 {
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_epf_bar*, align 8
  %7 = alloca i64, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pci_epf_bar* %2, %struct.pci_epf_bar** %6, align 8
  %8 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %9 = call i64 @IS_ERR_OR_NULL(%struct.pci_epc* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %14 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %30, label %17

17:                                               ; preds = %11
  %18 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %6, align 8
  %19 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BAR_5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %6, align 8
  %25 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %11, %3
  br label %57

31:                                               ; preds = %23, %17
  %32 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %33 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)*, i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)** %35, align 8
  %37 = icmp ne i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %57

39:                                               ; preds = %31
  %40 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %41 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %40, i32 0, i32 1
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %45 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)*, i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)** %47, align 8
  %49 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %6, align 8
  %52 = call i32 %48(%struct.pci_epc* %49, i64 %50, %struct.pci_epf_bar* %51)
  %53 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %54 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %53, i32 0, i32 1
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %39, %38, %30
  ret void
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
