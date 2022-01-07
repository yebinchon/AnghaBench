; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_scan_single_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_scan_single_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %7, i32 %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %14 = call i32 @pci_dev_put(%struct.pci_dev* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %3, align 8
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.pci_dev* @pci_scan_device(%struct.pci_bus* %17, i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %6, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = icmp ne %struct.pci_dev* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %28

23:                                               ; preds = %16
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %26 = call i32 @pci_device_add(%struct.pci_dev* %24, %struct.pci_bus* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %3, align 8
  br label %28

28:                                               ; preds = %23, %22, %12
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  ret %struct.pci_dev* %29
}

declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @pci_scan_device(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_device_add(%struct.pci_dev*, %struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
