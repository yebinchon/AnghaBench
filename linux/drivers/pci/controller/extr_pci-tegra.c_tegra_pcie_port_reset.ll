; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_port = type { i32, i64 }

@AFI_PEX_CTRL_RST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie_port*)* @tegra_pcie_port_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_port_reset(%struct.tegra_pcie_port* %0) #0 {
  %2 = alloca %struct.tegra_pcie_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.tegra_pcie_port* %0, %struct.tegra_pcie_port** %2, align 8
  %5 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %6 = call i64 @tegra_pcie_port_get_pex_ctrl(%struct.tegra_pcie_port* %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %8 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %13 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @gpiod_set_value(i64 %14, i32 1)
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @afi_readl(i32 %19, i64 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* @AFI_PEX_CTRL_RST, align 8
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %27 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @afi_writel(i32 %28, i64 %29, i64 %30)
  br label %32

32:                                               ; preds = %16, %11
  %33 = call i32 @usleep_range(i32 1000, i32 2000)
  %34 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %35 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %40 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gpiod_set_value(i64 %41, i32 0)
  br label %58

43:                                               ; preds = %32
  %44 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %45 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @afi_readl(i32 %46, i64 %47)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* @AFI_PEX_CTRL_RST, align 8
  %50 = load i64, i64* %4, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %4, align 8
  %52 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %53 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @afi_writel(i32 %54, i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %43, %38
  ret void
}

declare dso_local i64 @tegra_pcie_port_get_pex_ctrl(%struct.tegra_pcie_port*) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i64 @afi_readl(i32, i64) #1

declare dso_local i32 @afi_writel(i32, i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
