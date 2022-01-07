; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_setup_rc_app_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_setup_rc_app_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keystone_pcie = type { i32, i64, %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.pcie_port }
%struct.pcie_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@OB_WIN_SIZE = common dso_local global i64 0, align 8
@OB_SIZE = common dso_local global i32 0, align 4
@OB_ENABLEN = common dso_local global i32 0, align 4
@CMD_STATUS = common dso_local global i32 0, align 4
@OB_XLAT_EN_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.keystone_pcie*)* @ks_pcie_setup_rc_app_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_pcie_setup_rc_app_regs(%struct.keystone_pcie* %0) #0 {
  %2 = alloca %struct.keystone_pcie*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.pcie_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.keystone_pcie* %0, %struct.keystone_pcie** %2, align 8
  %10 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %11 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %14 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %13, i32 0, i32 2
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %14, align 8
  store %struct.dw_pcie* %15, %struct.dw_pcie** %5, align 8
  %16 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %17 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %16, i32 0, i32 0
  store %struct.pcie_port* %17, %struct.pcie_port** %6, align 8
  %18 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %19 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.pcie_port*, %struct.pcie_port** %6, align 8
  %24 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %29 = call i32 @ks_pcie_set_dbi_mode(%struct.keystone_pcie* %28)
  %30 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %31 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %32 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %30, i32 %31, i32 0)
  %33 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %34 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  %35 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %33, i32 %34, i32 0)
  %36 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %37 = call i32 @ks_pcie_clear_dbi_mode(%struct.keystone_pcie* %36)
  %38 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %39 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %92

43:                                               ; preds = %1
  %44 = load i64, i64* @OB_WIN_SIZE, align 8
  %45 = call i32 @ilog2(i64 %44)
  store i32 %45, i32* %3, align 4
  %46 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %47 = load i32, i32* @OB_SIZE, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %46, i32 %47, i32 %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %78, %43
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %55, %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br i1 %59, label %60, label %81

60:                                               ; preds = %58
  %61 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @OB_OFFSET_INDEX(i32 %62)
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @lower_32_bits(i64 %64)
  %66 = load i32, i32* @OB_ENABLEN, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %61, i32 %63, i32 %67)
  %69 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @OB_OFFSET_HI(i32 %70)
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @upper_32_bits(i64 %72)
  %74 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %69, i32 %71, i32 %73)
  %75 = load i64, i64* @OB_WIN_SIZE, align 8
  %76 = load i64, i64* %7, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %60
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %50

81:                                               ; preds = %58
  %82 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %83 = load i32, i32* @CMD_STATUS, align 4
  %84 = call i32 @ks_pcie_app_readl(%struct.keystone_pcie* %82, i32 %83)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* @OB_XLAT_EN_VAL, align 4
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load %struct.keystone_pcie*, %struct.keystone_pcie** %2, align 8
  %89 = load i32, i32* @CMD_STATUS, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %81, %42
  ret void
}

declare dso_local i32 @ks_pcie_set_dbi_mode(%struct.keystone_pcie*) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @ks_pcie_clear_dbi_mode(%struct.keystone_pcie*) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @ks_pcie_app_writel(%struct.keystone_pcie*, i32, i32) #1

declare dso_local i32 @OB_OFFSET_INDEX(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @OB_OFFSET_HI(i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @ks_pcie_app_readl(%struct.keystone_pcie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
