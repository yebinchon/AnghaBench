; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_phy_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_phy_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nwl_pcie = type { i64 }

@PS_LINKUP_OFFSET = common dso_local global i64 0, align 8
@PHY_RDY_LINKUP_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nwl_pcie*)* @nwl_phy_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nwl_phy_link_up(%struct.nwl_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nwl_pcie*, align 8
  store %struct.nwl_pcie* %0, %struct.nwl_pcie** %3, align 8
  %4 = load %struct.nwl_pcie*, %struct.nwl_pcie** %3, align 8
  %5 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PS_LINKUP_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  %10 = load i32, i32* @PHY_RDY_LINKUP_BIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
