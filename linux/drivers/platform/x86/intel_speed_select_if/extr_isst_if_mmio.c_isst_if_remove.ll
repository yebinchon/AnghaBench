; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mmio.c_isst_if_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mmio.c_isst_if_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.isst_if_device = type { i32 }

@ISST_IF_DEV_MBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @isst_if_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isst_if_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.isst_if_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.isst_if_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.isst_if_device* %5, %struct.isst_if_device** %3, align 8
  %6 = load i32, i32* @ISST_IF_DEV_MBOX, align 4
  %7 = call i32 @isst_if_cdev_unregister(i32 %6)
  %8 = load %struct.isst_if_device*, %struct.isst_if_device** %3, align 8
  %9 = getelementptr inbounds %struct.isst_if_device, %struct.isst_if_device* %8, i32 0, i32 0
  %10 = call i32 @mutex_destroy(i32* %9)
  ret void
}

declare dso_local %struct.isst_if_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @isst_if_cdev_unregister(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
