; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_handle_legacy_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_handle_legacy_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keystone_pcie = type { i32, %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c": irq: irq_offset %d, virq %d\0A\00", align 1
@IRQ_EOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.keystone_pcie*, i32)* @ks_pcie_handle_legacy_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_pcie_handle_legacy_irq(%struct.keystone_pcie* %0, i32 %1) #0 {
  %3 = alloca %struct.keystone_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.keystone_pcie* %0, %struct.keystone_pcie** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %9, i32 0, i32 1
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  store %struct.dw_pcie* %11, %struct.dw_pcie** %5, align 8
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %13 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @IRQ_STATUS(i32 %16)
  %18 = call i32 @ks_pcie_app_readl(%struct.keystone_pcie* %15, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = call i32 @BIT(i32 0)
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %25 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @irq_linear_revmap(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @generic_handle_irq(i32 %33)
  br label %35

35:                                               ; preds = %23, %2
  %36 = load %struct.keystone_pcie*, %struct.keystone_pcie** %3, align 8
  %37 = load i32, i32* @IRQ_EOI, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @ks_pcie_app_readl(%struct.keystone_pcie*, i32) #1

declare dso_local i32 @IRQ_STATUS(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @ks_pcie_app_writel(%struct.keystone_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
