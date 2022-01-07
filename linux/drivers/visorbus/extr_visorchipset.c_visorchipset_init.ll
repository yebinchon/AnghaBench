; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_visorchipset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_visorchipset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.visorchannel*, %struct.acpi_device*, i32, i8*, i32 }
%struct.visorchannel = type { i32 }
%struct.acpi_device = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@chipset_dev = common dso_local global %struct.TYPE_8__* null, align 8
@POLLJIFFIES_CONTROLVM_FAST = common dso_local global i8* null, align 8
@visorchipset_dev_groups = common dso_local global i32 0, align 4
@visor_controlvm_channel_guid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"controlvm\00", align 1
@VISOR_CONTROLVM_CHANNEL_VERSIONID = common dso_local global i32 0, align 4
@VISOR_CHANNEL_SIGNATURE = common dso_local global i32 0, align 4
@setup_crash_devices_work_queue = common dso_local global i32 0, align 4
@controlvm_periodic_work = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @visorchipset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorchipset_init(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.visorchannel*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.TYPE_8__* @kzalloc(i32 40, i32 %8)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** @chipset_dev, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %105

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %15 = call i32 @controlvm_channel_create(%struct.TYPE_8__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %102

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 1
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %22, align 8
  %23 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store %struct.acpi_device* %23, %struct.acpi_device** %25, align 8
  %26 = load i8*, i8** @POLLJIFFIES_CONTROLVM_FAST, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.acpi_device*, %struct.acpi_device** %30, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* @visorchipset_dev_groups, align 4
  %35 = call i32 @sysfs_create_groups(i32* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  br label %97

39:                                               ; preds = %19
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.visorchannel*, %struct.visorchannel** %41, align 8
  store %struct.visorchannel* %42, %struct.visorchannel** %5, align 8
  %43 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %44 = call i32 @visorchannel_get_header(%struct.visorchannel* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.acpi_device*, %struct.acpi_device** %46, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 0
  %49 = load i32, i32* @VISOR_CONTROLVM_CHANNEL_VERSIONID, align 4
  %50 = load i32, i32* @VISOR_CHANNEL_SIGNATURE, align 4
  %51 = call i32 @visor_check_channel(i32 %44, %struct.TYPE_7__* %48, i32* @visor_controlvm_channel_guid, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %39
  br label %89

54:                                               ; preds = %39
  %55 = call i64 (...) @is_kdump_kernel()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* @setup_crash_devices_work_queue, align 4
  %61 = call i32 @INIT_DELAYED_WORK(i32* %59, i32 %60)
  br label %67

62:                                               ; preds = %54
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* @controlvm_periodic_work, align 4
  %66 = call i32 @INIT_DELAYED_WORK(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @jiffies, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** @POLLJIFFIES_CONTROLVM_FAST, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @schedule_delayed_work(i32* %75, i8* %78)
  %80 = call i32 (...) @visorbus_init()
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  br label %85

84:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %111

85:                                               ; preds = %83
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = call i32 @cancel_delayed_work_sync(i32* %87)
  br label %89

89:                                               ; preds = %85, %53
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.acpi_device*, %struct.acpi_device** %91, align 8
  %93 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* @visorchipset_dev_groups, align 4
  %96 = call i32 @sysfs_remove_groups(i32* %94, i32 %95)
  br label %97

97:                                               ; preds = %89, %38
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.visorchannel*, %struct.visorchannel** %99, align 8
  %101 = call i32 @visorchannel_destroy(%struct.visorchannel* %100)
  br label %102

102:                                              ; preds = %97, %18
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chipset_dev, align 8
  %104 = call i32 @kfree(%struct.TYPE_8__* %103)
  br label %105

105:                                              ; preds = %102, %12
  %106 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %107 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %106, i32 0, i32 0
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @dev_err(%struct.TYPE_7__* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %105, %84
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @controlvm_channel_create(%struct.TYPE_8__*) #1

declare dso_local i32 @sysfs_create_groups(i32*, i32) #1

declare dso_local i32 @visor_check_channel(i32, %struct.TYPE_7__*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @visorchannel_get_header(%struct.visorchannel*) #1

declare dso_local i64 @is_kdump_kernel(...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i8*) #1

declare dso_local i32 @visorbus_init(...) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @sysfs_remove_groups(i32*, i32) #1

declare dso_local i32 @visorchannel_destroy(%struct.visorchannel*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
