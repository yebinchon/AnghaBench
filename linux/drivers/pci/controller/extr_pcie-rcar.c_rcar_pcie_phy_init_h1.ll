; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_phy_init_h1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_phy_init_h1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_pcie*)* @rcar_pcie_phy_init_h1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pcie_phy_init_h1(%struct.rcar_pcie* %0) #0 {
  %2 = alloca %struct.rcar_pcie*, align 8
  store %struct.rcar_pcie* %0, %struct.rcar_pcie** %2, align 8
  %3 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %4 = call i32 @phy_write_reg(%struct.rcar_pcie* %3, i32 0, i32 66, i32 1, i32 247677329)
  %5 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %6 = call i32 @phy_write_reg(%struct.rcar_pcie* %5, i32 1, i32 66, i32 1, i32 247677312)
  %7 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %8 = call i32 @phy_write_reg(%struct.rcar_pcie* %7, i32 0, i32 67, i32 1, i32 2163080)
  %9 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %10 = call i32 @phy_write_reg(%struct.rcar_pcie* %9, i32 1, i32 67, i32 1, i32 2163080)
  %11 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %12 = call i32 @phy_write_reg(%struct.rcar_pcie* %11, i32 0, i32 68, i32 1, i32 22806548)
  %13 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %14 = call i32 @phy_write_reg(%struct.rcar_pcie* %13, i32 1, i32 68, i32 1, i32 22806548)
  %15 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %16 = call i32 @phy_write_reg(%struct.rcar_pcie* %15, i32 1, i32 76, i32 1, i32 2019652768)
  %17 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %18 = call i32 @phy_write_reg(%struct.rcar_pcie* %17, i32 1, i32 77, i32 1, i32 75497659)
  %19 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %20 = call i32 @phy_write_reg(%struct.rcar_pcie* %19, i32 0, i32 81, i32 1, i32 127844450)
  %21 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %22 = call i32 @phy_write_reg(%struct.rcar_pcie* %21, i32 0, i32 82, i32 1, i32 536870912)
  %23 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %24 = call i32 @phy_write_reg(%struct.rcar_pcie* %23, i32 1, i32 82, i32 1, i32 536870912)
  %25 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %26 = call i32 @phy_write_reg(%struct.rcar_pcie* %25, i32 1, i32 86, i32 1, i32 14342)
  %27 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %28 = call i32 @phy_write_reg(%struct.rcar_pcie* %27, i32 0, i32 96, i32 1, i32 4916133)
  %29 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %30 = call i32 @phy_write_reg(%struct.rcar_pcie* %29, i32 0, i32 100, i32 1, i32 1057955599)
  %31 = load %struct.rcar_pcie*, %struct.rcar_pcie** %2, align 8
  %32 = call i32 @phy_write_reg(%struct.rcar_pcie* %31, i32 0, i32 102, i32 1, i32 32768)
  ret i32 0
}

declare dso_local i32 @phy_write_reg(%struct.rcar_pcie*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
