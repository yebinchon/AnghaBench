; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_am654_raise_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_am654_raise_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie_ep = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.keystone_pcie = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"UNKNOWN IRQ type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie_ep*, i32, i32, i32)* @ks_pcie_am654_raise_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_pcie_am654_raise_irq(%struct.dw_pcie_ep* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_pcie_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dw_pcie*, align 8
  %11 = alloca %struct.keystone_pcie*, align 8
  store %struct.dw_pcie_ep* %0, %struct.dw_pcie_ep** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %13 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %12)
  store %struct.dw_pcie* %13, %struct.dw_pcie** %10, align 8
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %15 = call %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie* %14)
  store %struct.keystone_pcie* %15, %struct.keystone_pcie** %11, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %25 [
    i32 129, label %17
    i32 128, label %20
  ]

17:                                               ; preds = %4
  %18 = load %struct.keystone_pcie*, %struct.keystone_pcie** %11, align 8
  %19 = call i32 @ks_pcie_am654_raise_legacy_irq(%struct.keystone_pcie* %18)
  br label %32

20:                                               ; preds = %4
  %21 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dw_pcie_ep_raise_msi_irq(%struct.dw_pcie_ep* %21, i32 %22, i32 %23)
  br label %32

25:                                               ; preds = %4
  %26 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %27 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %33

32:                                               ; preds = %20, %17
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @ks_pcie_am654_raise_legacy_irq(%struct.keystone_pcie*) #1

declare dso_local i32 @dw_pcie_ep_raise_msi_irq(%struct.dw_pcie_ep*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
