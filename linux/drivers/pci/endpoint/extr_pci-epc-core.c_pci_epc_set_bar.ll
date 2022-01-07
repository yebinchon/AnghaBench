; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_set_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_set_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.pci_epf_bar = type { i32, i64, i32 }

@BAR_5 = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_SPACE_IO = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_IO_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_epc_set_bar(%struct.pci_epc* %0, i64 %1, %struct.pci_epf_bar* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_epc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pci_epf_bar*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pci_epc* %0, %struct.pci_epc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pci_epf_bar* %2, %struct.pci_epf_bar** %7, align 8
  %11 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %7, align 8
  %12 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %15 = call i64 @IS_ERR_OR_NULL(%struct.pci_epc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %20 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %55, label %23

23:                                               ; preds = %17
  %24 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %7, align 8
  %25 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BAR_5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %29, %23
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_IO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @PCI_BASE_ADDRESS_IO_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %7, align 8
  %46 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @upper_32_bits(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50, %39, %29, %17, %3
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %87

58:                                               ; preds = %50, %44
  %59 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %60 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = bitcast {}** %62 to i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)**
  %64 = load i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)*, i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)** %63, align 8
  %65 = icmp ne i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %87

67:                                               ; preds = %58
  %68 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %69 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %68, i32 0, i32 1
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %73 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = bitcast {}** %75 to i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)**
  %77 = load i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)*, i32 (%struct.pci_epc*, i64, %struct.pci_epf_bar*)** %76, align 8
  %78 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %7, align 8
  %81 = call i32 %77(%struct.pci_epc* %78, i64 %79, %struct.pci_epf_bar* %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %83 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %82, i32 0, i32 1
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %67, %66, %55
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.pci_epc*) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
