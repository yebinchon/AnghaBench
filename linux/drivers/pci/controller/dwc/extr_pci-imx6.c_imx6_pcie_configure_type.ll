; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_configure_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_configure_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IMX8MQ = common dso_local global i64 0, align 8
@IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i32 0, align 4
@IMX6Q_GPR12_DEVICE_TYPE = common dso_local global i32 0, align 4
@IOMUXC_GPR12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6_pcie*)* @imx6_pcie_configure_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6_pcie_configure_type(%struct.imx6_pcie* %0) #0 {
  %2 = alloca %struct.imx6_pcie*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %2, align 8
  %5 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %6 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IMX8MQ, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %14 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* @IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE, align 4
  %20 = load i32, i32* @PCI_EXP_TYPE_ROOT_PORT, align 4
  %21 = call i32 @FIELD_PREP(i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %12, %1
  %23 = load i32, i32* @IMX6Q_GPR12_DEVICE_TYPE, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @IMX6Q_GPR12_DEVICE_TYPE, align 4
  %25 = load i32, i32* @PCI_EXP_TYPE_ROOT_PORT, align 4
  %26 = call i32 @FIELD_PREP(i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %29 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IOMUXC_GPR12, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
