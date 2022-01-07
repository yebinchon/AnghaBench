; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_ep_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie_ep = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.artpec6_pcie = type { i32 }

@BAR_0 = common dso_local global i32 0, align 4
@BAR_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_pcie_ep*)* @artpec6_pcie_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_pcie_ep_init(%struct.dw_pcie_ep* %0) #0 {
  %2 = alloca %struct.dw_pcie_ep*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.artpec6_pcie*, align 8
  %5 = alloca i32, align 4
  store %struct.dw_pcie_ep* %0, %struct.dw_pcie_ep** %2, align 8
  %6 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %2, align 8
  %7 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %6)
  store %struct.dw_pcie* %7, %struct.dw_pcie** %3, align 8
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %9 = call %struct.artpec6_pcie* @to_artpec6_pcie(%struct.dw_pcie* %8)
  store %struct.artpec6_pcie* %9, %struct.artpec6_pcie** %4, align 8
  %10 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %4, align 8
  %11 = call i32 @artpec6_pcie_assert_core_reset(%struct.artpec6_pcie* %10)
  %12 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %4, align 8
  %13 = call i32 @artpec6_pcie_init_phy(%struct.artpec6_pcie* %12)
  %14 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %4, align 8
  %15 = call i32 @artpec6_pcie_deassert_core_reset(%struct.artpec6_pcie* %14)
  %16 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %4, align 8
  %17 = call i32 @artpec6_pcie_wait_for_phy(%struct.artpec6_pcie* %16)
  %18 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %4, align 8
  %19 = call i32 @artpec6_pcie_set_nfts(%struct.artpec6_pcie* %18)
  %20 = load i32, i32* @BAR_0, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %29, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BAR_5, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dw_pcie_ep_reset_bar(%struct.dw_pcie* %26, i32 %27)
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %21

32:                                               ; preds = %21
  ret void
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local %struct.artpec6_pcie* @to_artpec6_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @artpec6_pcie_assert_core_reset(%struct.artpec6_pcie*) #1

declare dso_local i32 @artpec6_pcie_init_phy(%struct.artpec6_pcie*) #1

declare dso_local i32 @artpec6_pcie_deassert_core_reset(%struct.artpec6_pcie*) #1

declare dso_local i32 @artpec6_pcie_wait_for_phy(%struct.artpec6_pcie*) #1

declare dso_local i32 @artpec6_pcie_set_nfts(%struct.artpec6_pcie*) #1

declare dso_local i32 @dw_pcie_ep_reset_bar(%struct.dw_pcie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
