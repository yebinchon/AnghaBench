; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_rfkill_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_rfkill_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.pci_bus = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unable to find PCI bus 1?\0A\00", align 1
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to read PCI config space?\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"BIOS says wireless lan is %s, but the pci device is %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"blocked\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"unblocked\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"skipped wireless hotplug as probably inappropriate for this model\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_wmi*)* @asus_rfkill_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_rfkill_hotplug(%struct.asus_wmi* %0) #0 {
  %2 = alloca %struct.asus_wmi*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.asus_wmi* %0, %struct.asus_wmi** %2, align 8
  %8 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %9 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %8, i32 0, i32 3
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %12 = call i32 @asus_wlan_rfkill_blocked(%struct.asus_wmi* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %14 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %13, i32 0, i32 3
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %17 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = call i32 (...) @pci_lock_rescan_remove()
  %20 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %21 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %27 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @rfkill_set_sw_state(i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %34 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %103

38:                                               ; preds = %32
  %39 = call %struct.pci_bus* @pci_find_bus(i32 0, i32 1)
  store %struct.pci_bus* %39, %struct.pci_bus** %4, align 8
  %40 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %41 = icmp ne %struct.pci_bus* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %104

44:                                               ; preds = %38
  %45 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %46 = load i32, i32* @PCI_VENDOR_ID, align 4
  %47 = call i64 @pci_bus_read_config_dword(%struct.pci_bus* %45, i32 0, i32 %46, i32* %7)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %104

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, -1
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %67 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %62, i8* %66)
  %68 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  br label %104

69:                                               ; preds = %51
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %69
  %73 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %74 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %73, i32 0)
  store %struct.pci_dev* %74, %struct.pci_dev** %3, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %76 = icmp ne %struct.pci_dev* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %79 = call i32 @pci_dev_put(%struct.pci_dev* %78)
  br label %104

80:                                               ; preds = %72
  %81 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %82 = call %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus* %81, i32 0)
  store %struct.pci_dev* %82, %struct.pci_dev** %3, align 8
  %83 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %84 = icmp ne %struct.pci_dev* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %87 = call i32 @pci_bus_assign_resources(%struct.pci_bus* %86)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %89 = call i32 @pci_bus_add_device(%struct.pci_dev* %88)
  br label %90

90:                                               ; preds = %85, %80
  br label %102

91:                                               ; preds = %69
  %92 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %93 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %92, i32 0)
  store %struct.pci_dev* %93, %struct.pci_dev** %3, align 8
  %94 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %95 = icmp ne %struct.pci_dev* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %98 = call i32 @pci_stop_and_remove_bus_device(%struct.pci_dev* %97)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %100 = call i32 @pci_dev_put(%struct.pci_dev* %99)
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %90
  br label %103

103:                                              ; preds = %102, %32
  br label %104

104:                                              ; preds = %103, %77, %58, %49, %42
  %105 = call i32 (...) @pci_unlock_rescan_remove()
  %106 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %107 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @asus_wlan_rfkill_blocked(%struct.asus_wmi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @rfkill_set_sw_state(i64, i32) #1

declare dso_local %struct.pci_bus* @pci_find_bus(i32, i32) #1

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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
