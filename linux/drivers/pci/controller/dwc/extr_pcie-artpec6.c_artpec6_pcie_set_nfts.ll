; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_set_nfts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_set_nfts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_pcie = type { i64, %struct.dw_pcie* }
%struct.dw_pcie = type { i32 }

@ARTPEC7 = common dso_local global i64 0, align 8
@ACK_F_ASPM_CTRL_OFF = common dso_local global i32 0, align 4
@ACK_N_FTS_MASK = common dso_local global i32 0, align 4
@PCIE_LINK_WIDTH_SPEED_CONTROL = common dso_local global i32 0, align 4
@FAST_TRAINING_SEQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.artpec6_pcie*)* @artpec6_pcie_set_nfts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_pcie_set_nfts(%struct.artpec6_pcie* %0) #0 {
  %2 = alloca %struct.artpec6_pcie*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.artpec6_pcie* %0, %struct.artpec6_pcie** %2, align 8
  %5 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %6 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %5, i32 0, i32 1
  %7 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  store %struct.dw_pcie* %7, %struct.dw_pcie** %3, align 8
  %8 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %9 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ARTPEC7, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %16 = load i32, i32* @ACK_F_ASPM_CTRL_OFF, align 4
  %17 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @ACK_N_FTS_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = call i32 @ACK_N_FTS(i32 180)
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %26 = load i32, i32* @ACK_F_ASPM_CTRL_OFF, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %25, i32 %26, i32 %27)
  %29 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %30 = load i32, i32* @PCIE_LINK_WIDTH_SPEED_CONTROL, align 4
  %31 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @FAST_TRAINING_SEQ_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = call i32 @FAST_TRAINING_SEQ(i32 180)
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %40 = load i32, i32* @PCIE_LINK_WIDTH_SPEED_CONTROL, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @ACK_N_FTS(i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @FAST_TRAINING_SEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
