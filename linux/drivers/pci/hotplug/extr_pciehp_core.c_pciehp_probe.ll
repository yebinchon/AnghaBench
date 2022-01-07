; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_core.c_pciehp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_core.c_pciehp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.controller = type { i32 }

@PCIE_PORT_SERVICE_HP = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Hotplug bridge without secondary bus, ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Controller initialization failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Slot already registered by another hotplug driver\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Slot initialization failed (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Notification initialization failed (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Publication to user space failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_device*)* @pciehp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pciehp_probe(%struct.pcie_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.controller*, align 8
  store %struct.pcie_device* %0, %struct.pcie_device** %3, align 8
  %6 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PCIE_PORT_SERVICE_HP, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %94

14:                                               ; preds = %1
  %15 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %16 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @pci_err(%struct.TYPE_2__* %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %14
  %29 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %30 = call %struct.controller* @pcie_init(%struct.pcie_device* %29)
  store %struct.controller* %30, %struct.controller** %5, align 8
  %31 = load %struct.controller*, %struct.controller** %5, align 8
  %32 = icmp ne %struct.controller* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %35 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @pci_err(%struct.TYPE_2__* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %94

40:                                               ; preds = %28
  %41 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %42 = load %struct.controller*, %struct.controller** %5, align 8
  %43 = call i32 @set_service_data(%struct.pcie_device* %41, %struct.controller* %42)
  %44 = load %struct.controller*, %struct.controller** %5, align 8
  %45 = call i32 @init_slot(%struct.controller* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.controller*, %struct.controller** %5, align 8
  %55 = call i32 @ctrl_warn(%struct.controller* %54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %60

56:                                               ; preds = %48
  %57 = load %struct.controller*, %struct.controller** %5, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @ctrl_err(%struct.controller* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %53
  br label %89

61:                                               ; preds = %40
  %62 = load %struct.controller*, %struct.controller** %5, align 8
  %63 = call i32 @pcie_init_notification(%struct.controller* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.controller*, %struct.controller** %5, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ctrl_err(%struct.controller* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %86

70:                                               ; preds = %61
  %71 = load %struct.controller*, %struct.controller** %5, align 8
  %72 = getelementptr inbounds %struct.controller, %struct.controller* %71, i32 0, i32 0
  %73 = call i32 @pci_hp_add(i32* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.controller*, %struct.controller** %5, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @ctrl_err(%struct.controller* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %83

80:                                               ; preds = %70
  %81 = load %struct.controller*, %struct.controller** %5, align 8
  %82 = call i32 @pciehp_check_presence(%struct.controller* %81)
  store i32 0, i32* %2, align 4
  br label %94

83:                                               ; preds = %76
  %84 = load %struct.controller*, %struct.controller** %5, align 8
  %85 = call i32 @pcie_shutdown_notification(%struct.controller* %84)
  br label %86

86:                                               ; preds = %83, %66
  %87 = load %struct.controller*, %struct.controller** %5, align 8
  %88 = call i32 @cleanup_slot(%struct.controller* %87)
  br label %89

89:                                               ; preds = %86, %60
  %90 = load %struct.controller*, %struct.controller** %5, align 8
  %91 = call i32 @pciehp_release_ctrl(%struct.controller* %90)
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %89, %80, %33, %21, %11
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @pci_err(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.controller* @pcie_init(%struct.pcie_device*) #1

declare dso_local i32 @set_service_data(%struct.pcie_device*, %struct.controller*) #1

declare dso_local i32 @init_slot(%struct.controller*) #1

declare dso_local i32 @ctrl_warn(%struct.controller*, i8*) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, i32) #1

declare dso_local i32 @pcie_init_notification(%struct.controller*) #1

declare dso_local i32 @pci_hp_add(i32*) #1

declare dso_local i32 @pciehp_check_presence(%struct.controller*) #1

declare dso_local i32 @pcie_shutdown_notification(%struct.controller*) #1

declare dso_local i32 @cleanup_slot(%struct.controller*) #1

declare dso_local i32 @pciehp_release_ctrl(%struct.controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
