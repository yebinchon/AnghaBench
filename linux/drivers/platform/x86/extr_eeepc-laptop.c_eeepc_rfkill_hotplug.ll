; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { %struct.pci_bus* }
%struct.pci_bus = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Unable to find port\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to find PCI bus 1?\0A\00", align 1
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to read PCI config space?\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"BIOS says wireless lan is %s, but the pci device is %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"blocked\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"unblocked\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"skipped wireless hotplug as probably inappropriate for this model\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeepc_laptop*, i32)* @eeepc_rfkill_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeepc_rfkill_hotplug(%struct.eeepc_laptop* %0, i32 %1) #0 {
  %3 = alloca %struct.eeepc_laptop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %12 = call i32 @eeepc_wlan_rfkill_blocked(%struct.eeepc_laptop* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %14 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %19 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @rfkill_set_sw_state(i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %25 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = call i32 (...) @pci_lock_rescan_remove()
  %28 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %29 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %111

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  %36 = call %struct.pci_dev* @acpi_get_pci_dev(i32 %35)
  store %struct.pci_dev* %36, %struct.pci_dev** %5, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = icmp ne %struct.pci_dev* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = call i32 @pr_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %111

41:                                               ; preds = %34
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load %struct.pci_bus*, %struct.pci_bus** %43, align 8
  store %struct.pci_bus* %44, %struct.pci_bus** %7, align 8
  %45 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %46 = icmp ne %struct.pci_bus* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %108

49:                                               ; preds = %41
  %50 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %51 = load i32, i32* @PCI_VENDOR_ID, align 4
  %52 = call i64 @pci_bus_read_config_dword(%struct.pci_bus* %50, i32 0, i32 %51, i32* %10)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %108

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, -1
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %72 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %67, i8* %71)
  %73 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  br label %108

74:                                               ; preds = %56
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %74
  %78 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %79 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %78, i32 0)
  store %struct.pci_dev* %79, %struct.pci_dev** %6, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %81 = icmp ne %struct.pci_dev* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %84 = call i32 @pci_dev_put(%struct.pci_dev* %83)
  br label %108

85:                                               ; preds = %77
  %86 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %87 = call %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus* %86, i32 0)
  store %struct.pci_dev* %87, %struct.pci_dev** %6, align 8
  %88 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %89 = icmp ne %struct.pci_dev* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %92 = call i32 @pci_bus_assign_resources(%struct.pci_bus* %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %94 = call i32 @pci_bus_add_device(%struct.pci_dev* %93)
  br label %95

95:                                               ; preds = %90, %85
  br label %107

96:                                               ; preds = %74
  %97 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %98 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %97, i32 0)
  store %struct.pci_dev* %98, %struct.pci_dev** %6, align 8
  %99 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %100 = icmp ne %struct.pci_dev* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %103 = call i32 @pci_stop_and_remove_bus_device(%struct.pci_dev* %102)
  %104 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %105 = call i32 @pci_dev_put(%struct.pci_dev* %104)
  br label %106

106:                                              ; preds = %101, %96
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107, %82, %63, %54, %47
  %109 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %110 = call i32 @pci_dev_put(%struct.pci_dev* %109)
  br label %111

111:                                              ; preds = %108, %39, %33
  %112 = call i32 (...) @pci_unlock_rescan_remove()
  %113 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %114 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  ret void
}

declare dso_local i32 @eeepc_wlan_rfkill_blocked(%struct.eeepc_laptop*) #1

declare dso_local i32 @rfkill_set_sw_state(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local %struct.pci_dev* @acpi_get_pci_dev(i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i64 @pci_bus_read_config_dword(%struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_bus_assign_resources(%struct.pci_bus*) #1

declare dso_local i32 @pci_bus_add_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_stop_and_remove_bus_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
