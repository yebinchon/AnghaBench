; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_pme.c_pcie_pme_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32, i32 }
%struct.pcie_pme_service_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_device*)* @pcie_pme_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_pme_remove(%struct.pcie_device* %0) #0 {
  %2 = alloca %struct.pcie_device*, align 8
  %3 = alloca %struct.pcie_pme_service_data*, align 8
  store %struct.pcie_device* %0, %struct.pcie_device** %2, align 8
  %4 = load %struct.pcie_device*, %struct.pcie_device** %2, align 8
  %5 = call %struct.pcie_pme_service_data* @get_service_data(%struct.pcie_device* %4)
  store %struct.pcie_pme_service_data* %5, %struct.pcie_pme_service_data** %3, align 8
  %6 = load %struct.pcie_device*, %struct.pcie_device** %2, align 8
  %7 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %3, align 8
  %10 = call i32 @pcie_pme_disable_interrupt(i32 %8, %struct.pcie_pme_service_data* %9)
  %11 = load %struct.pcie_device*, %struct.pcie_device** %2, align 8
  %12 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pcie_device*, %struct.pcie_device** %2, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.pcie_device* %14)
  %16 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %3, align 8
  %17 = getelementptr inbounds %struct.pcie_pme_service_data, %struct.pcie_pme_service_data* %16, i32 0, i32 0
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.pcie_pme_service_data*, %struct.pcie_pme_service_data** %3, align 8
  %20 = call i32 @kfree(%struct.pcie_pme_service_data* %19)
  ret void
}

declare dso_local %struct.pcie_pme_service_data* @get_service_data(%struct.pcie_device*) #1

declare dso_local i32 @pcie_pme_disable_interrupt(i32, %struct.pcie_pme_service_data*) #1

declare dso_local i32 @free_irq(i32, %struct.pcie_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.pcie_pme_service_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
