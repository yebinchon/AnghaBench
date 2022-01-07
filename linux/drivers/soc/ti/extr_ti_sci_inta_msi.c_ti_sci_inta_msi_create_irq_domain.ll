; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_inta_msi.c_ti_sci_inta_msi_create_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_inta_msi.c_ti_sci_inta_msi_create_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.msi_domain_info = type { i32 }
%struct.irq_domain = type { i32 }

@DOMAIN_BUS_TI_SCI_INTA_MSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irq_domain* @ti_sci_inta_msi_create_irq_domain(%struct.fwnode_handle* %0, %struct.msi_domain_info* %1, %struct.irq_domain* %2) #0 {
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.msi_domain_info*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_domain*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store %struct.msi_domain_info* %1, %struct.msi_domain_info** %5, align 8
  store %struct.irq_domain* %2, %struct.irq_domain** %6, align 8
  %8 = load %struct.msi_domain_info*, %struct.msi_domain_info** %5, align 8
  %9 = call i32 @ti_sci_inta_msi_update_chip_ops(%struct.msi_domain_info* %8)
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %11 = load %struct.msi_domain_info*, %struct.msi_domain_info** %5, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %13 = call %struct.irq_domain* @msi_create_irq_domain(%struct.fwnode_handle* %10, %struct.msi_domain_info* %11, %struct.irq_domain* %12)
  store %struct.irq_domain* %13, %struct.irq_domain** %7, align 8
  %14 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %15 = icmp ne %struct.irq_domain* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %18 = load i32, i32* @DOMAIN_BUS_TI_SCI_INTA_MSI, align 4
  %19 = call i32 @irq_domain_update_bus_token(%struct.irq_domain* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  ret %struct.irq_domain* %21
}

declare dso_local i32 @ti_sci_inta_msi_update_chip_ops(%struct.msi_domain_info*) #1

declare dso_local %struct.irq_domain* @msi_create_irq_domain(%struct.fwnode_handle*, %struct.msi_domain_info*, %struct.irq_domain*) #1

declare dso_local i32 @irq_domain_update_bus_token(%struct.irq_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
