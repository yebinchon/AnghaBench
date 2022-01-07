; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-driver.c_pci_call_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-driver.c_pci_call_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_driver = type { i32 }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.drv_dev_and_id = type { %struct.pci_device_id*, %struct.pci_dev*, %struct.pci_driver* }

@MAX_NUMNODES = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_driver*, %struct.pci_dev*, %struct.pci_device_id*)* @pci_call_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_call_probe(%struct.pci_driver* %0, %struct.pci_dev* %1, %struct.pci_device_id* %2) #0 {
  %4 = alloca %struct.pci_driver*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drv_dev_and_id, align 8
  store %struct.pci_driver* %0, %struct.pci_driver** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store %struct.pci_device_id* %2, %struct.pci_device_id** %6, align 8
  %11 = getelementptr inbounds %struct.drv_dev_and_id, %struct.drv_dev_and_id* %10, i32 0, i32 0
  %12 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %13 = bitcast %struct.pci_driver* %12 to %struct.pci_device_id*
  store %struct.pci_device_id* %13, %struct.pci_device_id** %11, align 8
  %14 = getelementptr inbounds %struct.drv_dev_and_id, %struct.drv_dev_and_id* %10, i32 0, i32 1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %14, align 8
  %16 = getelementptr inbounds %struct.drv_dev_and_id, %struct.drv_dev_and_id* %10, i32 0, i32 2
  %17 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %18 = bitcast %struct.pci_device_id* %17 to %struct.pci_driver*
  store %struct.pci_driver* %18, %struct.pci_driver** %16, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = call i32 @dev_to_node(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = call i32 (...) @cpu_hotplug_disable()
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MAX_NUMNODES, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @node_online(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = call i64 @pci_physfn_is_probed(%struct.pci_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31, %27, %3
  %40 = load i32, i32* @nr_cpu_ids, align 4
  store i32 %40, i32* %9, align 4
  br label %46

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @cpumask_of_node(i32 %42)
  %44 = load i32, i32* @cpu_online_mask, align 4
  %45 = call i32 @cpumask_any_and(i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %41, %39
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @nr_cpu_ids, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @work_on_cpu(i32 %51, i32 (%struct.drv_dev_and_id*)* @local_pci_probe, %struct.drv_dev_and_id* %10)
  store i32 %52, i32* %7, align 4
  br label %55

53:                                               ; preds = %46
  %54 = call i32 @local_pci_probe(%struct.drv_dev_and_id* %10)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = call i32 (...) @cpu_hotplug_enable()
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @cpu_hotplug_disable(...) #1

declare dso_local i32 @node_online(i32) #1

declare dso_local i64 @pci_physfn_is_probed(%struct.pci_dev*) #1

declare dso_local i32 @cpumask_any_and(i32, i32) #1

declare dso_local i32 @cpumask_of_node(i32) #1

declare dso_local i32 @work_on_cpu(i32, i32 (%struct.drv_dev_and_id*)*, %struct.drv_dev_and_id*) #1

declare dso_local i32 @local_pci_probe(%struct.drv_dev_and_id*) #1

declare dso_local i32 @cpu_hotplug_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
