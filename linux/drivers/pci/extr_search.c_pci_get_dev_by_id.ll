; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_search.c_pci_get_dev_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_search.c_pci_get_dev_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_device_id = type { i32 }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }

@pci_bus_type = common dso_local global i32 0, align 4
@match_pci_dev_by_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.pci_device_id*, %struct.pci_dev*)* @pci_get_dev_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @pci_get_dev_by_id(%struct.pci_device_id* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.pci_device_id*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.pci_device_id* %0, %struct.pci_device_id** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  store %struct.device* null, %struct.device** %6, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  %8 = call i32 (...) @in_interrupt()
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = load %struct.pci_device_id*, %struct.pci_device_id** %3, align 8
  %18 = bitcast %struct.pci_device_id* %17 to i8*
  %19 = load i32, i32* @match_pci_dev_by_id, align 4
  %20 = call %struct.device* @bus_find_device(i32* @pci_bus_type, %struct.device* %16, i8* %18, i32 %19)
  store %struct.device* %20, %struct.device** %5, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = icmp ne %struct.device* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call %struct.pci_dev* @to_pci_dev(%struct.device* %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %7, align 8
  br label %26

26:                                               ; preds = %23, %15
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_dev_put(%struct.pci_dev* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  ret %struct.pci_dev* %29
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local %struct.device* @bus_find_device(i32*, %struct.device*, i8*, i32) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
