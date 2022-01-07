; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_enable_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_enable_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_dw*)* @tegra_pcie_enable_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_enable_phy(%struct.tegra_pcie_dw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie_dw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %37, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %6
  %13 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @phy_init(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %41

24:                                               ; preds = %12
  %25 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @phy_power_on(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %55

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %6

40:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %66

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %4, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @phy_power_off(i32 %53)
  br label %55

55:                                               ; preds = %46, %35
  %56 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @phy_exit(i32 %62)
  br label %42

64:                                               ; preds = %42
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %40
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
