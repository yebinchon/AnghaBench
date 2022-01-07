; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_core.c_shpc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_core.c_shpc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.controller = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.controller*)* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Controller initialization failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Slot initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @shpc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shpc_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.controller*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @shpc_capable(%struct.pci_dev* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i64 @acpi_get_hp_hw_control_from_firmware(%struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %76

21:                                               ; preds = %14
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.controller* @kzalloc(i32 16, i32 %22)
  store %struct.controller* %23, %struct.controller** %7, align 8
  %24 = load %struct.controller*, %struct.controller** %7, align 8
  %25 = icmp ne %struct.controller* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %73

27:                                               ; preds = %21
  %28 = load %struct.controller*, %struct.controller** %7, align 8
  %29 = getelementptr inbounds %struct.controller, %struct.controller* %28, i32 0, i32 1
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.controller*, %struct.controller** %7, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @shpc_init(%struct.controller* %31, %struct.pci_dev* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.controller*, %struct.controller** %7, align 8
  %38 = call i32 @ctrl_dbg(%struct.controller* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %70

39:                                               ; preds = %27
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load %struct.controller*, %struct.controller** %7, align 8
  %42 = call i32 @pci_set_drvdata(%struct.pci_dev* %40, %struct.controller* %41)
  %43 = load %struct.controller*, %struct.controller** %7, align 8
  %44 = call i32 @init_slots(%struct.controller* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.controller*, %struct.controller** %7, align 8
  %49 = call i32 @ctrl_err(%struct.controller* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %62

50:                                               ; preds = %39
  %51 = load %struct.controller*, %struct.controller** %7, align 8
  %52 = call i32 @shpchp_create_ctrl_files(%struct.controller* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %59

56:                                               ; preds = %50
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %76

59:                                               ; preds = %55
  %60 = load %struct.controller*, %struct.controller** %7, align 8
  %61 = call i32 @cleanup_slots(%struct.controller* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.controller*, %struct.controller** %7, align 8
  %64 = getelementptr inbounds %struct.controller, %struct.controller* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.controller*)*, i32 (%struct.controller*)** %66, align 8
  %68 = load %struct.controller*, %struct.controller** %7, align 8
  %69 = call i32 %67(%struct.controller* %68)
  br label %70

70:                                               ; preds = %62, %36
  %71 = load %struct.controller*, %struct.controller** %7, align 8
  %72 = call i32 @kfree(%struct.controller* %71)
  br label %73

73:                                               ; preds = %70, %26
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %56, %18, %11
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @shpc_capable(%struct.pci_dev*) #1

declare dso_local i64 @acpi_get_hp_hw_control_from_firmware(%struct.pci_dev*) #1

declare dso_local %struct.controller* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @shpc_init(%struct.controller*, %struct.pci_dev*) #1

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.controller*) #1

declare dso_local i32 @init_slots(%struct.controller*) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*) #1

declare dso_local i32 @shpchp_create_ctrl_files(%struct.controller*) #1

declare dso_local i32 @cleanup_slots(%struct.controller*) #1

declare dso_local i32 @kfree(%struct.controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
