; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_legacy_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_legacy_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.keystone_pcie = type { i64*, %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.irq_chip = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c": Handling legacy irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @ks_pcie_legacy_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_pcie_legacy_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.keystone_pcie*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.irq_chip*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call i32 @irq_desc_get_irq(%struct.irq_desc* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call %struct.keystone_pcie* @irq_desc_get_handler_data(%struct.irq_desc* %11)
  store %struct.keystone_pcie* %12, %struct.keystone_pcie** %4, align 8
  %13 = load %struct.keystone_pcie*, %struct.keystone_pcie** %4, align 8
  %14 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %13, i32 0, i32 1
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %14, align 8
  store %struct.dw_pcie* %15, %struct.dw_pcie** %5, align 8
  %16 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %17 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = load %struct.keystone_pcie*, %struct.keystone_pcie** %4, align 8
  %22 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %20, %25
  store i64 %26, i64* %7, align 8
  %27 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %28 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %27)
  store %struct.irq_chip* %28, %struct.irq_chip** %8, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %33 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %34 = call i32 @chained_irq_enter(%struct.irq_chip* %32, %struct.irq_desc* %33)
  %35 = load %struct.keystone_pcie*, %struct.keystone_pcie** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @ks_pcie_handle_legacy_irq(%struct.keystone_pcie* %35, i64 %36)
  %38 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %39 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %40 = call i32 @chained_irq_exit(%struct.irq_chip* %38, %struct.irq_desc* %39)
  ret void
}

declare dso_local i32 @irq_desc_get_irq(%struct.irq_desc*) #1

declare dso_local %struct.keystone_pcie* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @ks_pcie_handle_legacy_irq(%struct.keystone_pcie*, i64) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
