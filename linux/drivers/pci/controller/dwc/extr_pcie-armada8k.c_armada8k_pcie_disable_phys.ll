; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-armada8k.c_armada8k_pcie_disable_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-armada8k.c_armada8k_pcie_disable_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada8k_pcie = type { i32* }

@ARMADA8K_PCIE_MAX_LANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.armada8k_pcie*)* @armada8k_pcie_disable_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada8k_pcie_disable_phys(%struct.armada8k_pcie* %0) #0 {
  %2 = alloca %struct.armada8k_pcie*, align 8
  %3 = alloca i32, align 4
  store %struct.armada8k_pcie* %0, %struct.armada8k_pcie** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ARMADA8K_PCIE_MAX_LANES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %2, align 8
  %10 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @phy_power_off(i32 %15)
  %17 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %2, align 8
  %18 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @phy_exit(i32 %23)
  br label %25

25:                                               ; preds = %8
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %4

28:                                               ; preds = %4
  ret void
}

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
