; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_add_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_add_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to get MSI IRQ (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie*, %struct.platform_device*)* @kirin_pcie_add_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirin_pcie_add_msi(%struct.dw_pcie* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.dw_pcie* %0, %struct.dw_pcie** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %7 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %8 = call i64 @IS_ENABLED(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = call i32 @platform_get_irq(%struct.platform_device* %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %10
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %24 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
