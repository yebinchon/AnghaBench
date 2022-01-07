; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci-phy/extr_pci-mt7621-phy.c_mt7621_pcie_phy_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci-phy/extr_pci-mt7621-phy.c_mt7621_pcie_phy_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i64, i64* }
%struct.mt7621_pci_phy = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.phy* }

@MAX_PHYS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @mt7621_pcie_phy_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @mt7621_pcie_phy_of_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.mt7621_pci_phy*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.mt7621_pci_phy* @dev_get_drvdata(%struct.device* %7)
  store %struct.mt7621_pci_phy* %8, %struct.mt7621_pci_phy** %6, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %6, align 8
  %15 = getelementptr inbounds %struct.mt7621_pci_phy, %struct.mt7621_pci_phy* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.phy*, %struct.phy** %19, align 8
  store %struct.phy* %20, %struct.phy** %3, align 8
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %23 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAX_PHYS, align 8
  %28 = icmp uge i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.phy* @ERR_PTR(i32 %34)
  store %struct.phy* %35, %struct.phy** %3, align 8
  br label %49

36:                                               ; preds = %21
  %37 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %6, align 8
  %38 = getelementptr inbounds %struct.mt7621_pci_phy, %struct.mt7621_pci_phy* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %41 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.phy*, %struct.phy** %47, align 8
  store %struct.phy* %48, %struct.phy** %3, align 8
  br label %49

49:                                               ; preds = %36, %32, %13
  %50 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %50
}

declare dso_local %struct.mt7621_pci_phy* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
