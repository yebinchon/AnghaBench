; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_write_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.pci_epf_header = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_epc_write_header(%struct.pci_epc* %0, i64 %1, %struct.pci_epf_header* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_epc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pci_epf_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pci_epf_header* %2, %struct.pci_epf_header** %7, align 8
  %10 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %11 = call i64 @IS_ERR_OR_NULL(%struct.pci_epc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %16 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %51

22:                                               ; preds = %13
  %23 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %24 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.pci_epc*, i64, %struct.pci_epf_header*)**
  %28 = load i32 (%struct.pci_epc*, i64, %struct.pci_epf_header*)*, i32 (%struct.pci_epc*, i64, %struct.pci_epf_header*)** %27, align 8
  %29 = icmp ne i32 (%struct.pci_epc*, i64, %struct.pci_epf_header*)* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %51

31:                                               ; preds = %22
  %32 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %33 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %32, i32 0, i32 1
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %37 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.pci_epc*, i64, %struct.pci_epf_header*)**
  %41 = load i32 (%struct.pci_epc*, i64, %struct.pci_epf_header*)*, i32 (%struct.pci_epc*, i64, %struct.pci_epf_header*)** %40, align 8
  %42 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.pci_epf_header*, %struct.pci_epf_header** %7, align 8
  %45 = call i32 %41(%struct.pci_epc* %42, i64 %43, %struct.pci_epf_header* %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %47 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %46, i32 0, i32 1
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %31, %30, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
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
