; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_msi_teardown_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_msi_teardown_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_controller = type { i32 }
%struct.tegra_msi = type { i32 }
%struct.irq_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi_controller*, i32)* @tegra_msi_teardown_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_msi_teardown_irq(%struct.msi_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.msi_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_msi*, align 8
  %6 = alloca %struct.irq_data*, align 8
  %7 = alloca i32, align 4
  store %struct.msi_controller* %0, %struct.msi_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.msi_controller*, %struct.msi_controller** %3, align 8
  %9 = call %struct.tegra_msi* @to_tegra_msi(%struct.msi_controller* %8)
  store %struct.tegra_msi* %9, %struct.tegra_msi** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.irq_data* @irq_get_irq_data(i32 %10)
  store %struct.irq_data* %11, %struct.irq_data** %6, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %13 = call i32 @irqd_to_hwirq(%struct.irq_data* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @irq_dispose_mapping(i32 %14)
  %16 = load %struct.tegra_msi*, %struct.tegra_msi** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @tegra_msi_free(%struct.tegra_msi* %16, i32 %17)
  ret void
}

declare dso_local %struct.tegra_msi* @to_tegra_msi(%struct.msi_controller*) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @tegra_msi_free(%struct.tegra_msi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
