; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pcie_find_smpss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pcie_find_smpss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64 }

@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @pcie_find_smpss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_find_smpss(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %6, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_is_pcie(%struct.pci_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i64 @pci_pcie_type(%struct.pci_dev* %19)
  %21 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64*, i64** %6, align 8
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %23, %18, %13
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %6, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %32, %25
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
