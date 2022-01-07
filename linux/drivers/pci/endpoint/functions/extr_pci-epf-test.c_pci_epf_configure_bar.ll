; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_configure_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_configure_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf = type { %struct.pci_epf_bar* }
%struct.pci_epf_bar = type { i32 }
%struct.pci_epc_features = type { i32, i64* }

@BAR_0 = common dso_local global i32 0, align 4
@BAR_5 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@bar_size = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_epf*, %struct.pci_epc_features*)* @pci_epf_configure_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_epf_configure_bar(%struct.pci_epf* %0, %struct.pci_epc_features* %1) #0 {
  %3 = alloca %struct.pci_epf*, align 8
  %4 = alloca %struct.pci_epc_features*, align 8
  %5 = alloca %struct.pci_epf_bar*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_epf* %0, %struct.pci_epf** %3, align 8
  store %struct.pci_epc_features* %1, %struct.pci_epc_features** %4, align 8
  %8 = load i32, i32* @BAR_0, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %60, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @BAR_5, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %63

13:                                               ; preds = %9
  %14 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %15 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %14, i32 0, i32 0
  %16 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %16, i64 %18
  store %struct.pci_epf_bar* %19, %struct.pci_epf_bar** %5, align 8
  %20 = load %struct.pci_epc_features*, %struct.pci_epc_features** %4, align 8
  %21 = getelementptr inbounds %struct.pci_epc_features, %struct.pci_epc_features* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %13
  %33 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %34 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %5, align 8
  %35 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %13
  %39 = load %struct.pci_epc_features*, %struct.pci_epc_features** %4, align 8
  %40 = getelementptr inbounds %struct.pci_epc_features, %struct.pci_epc_features* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %38
  %48 = load %struct.pci_epc_features*, %struct.pci_epc_features** %4, align 8
  %49 = getelementptr inbounds %struct.pci_epc_features, %struct.pci_epc_features* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** @bar_size, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %54, i64* %58, align 8
  br label %59

59:                                               ; preds = %47, %38
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %9

63:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
