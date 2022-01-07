; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_memory_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_memory_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__, %struct.thermal_cooling_device*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.thermal_cooling_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MEMORY_GET_BANDWIDTH = common dso_local global i32 0, align 4
@MEMORY_SET_BANDWIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Memory controller\00", align 1
@memory_cooling_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"thermal_cooling\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @intel_menlow_memory_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_menlow_memory_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_cooling_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = icmp ne %struct.acpi_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MEMORY_GET_BANDWIDTH, align 4
  %18 = call i32 @acpi_has_method(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %68

21:                                               ; preds = %13
  %22 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MEMORY_SET_BANDWIDTH, align 4
  %26 = call i32 @acpi_has_method(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %68

29:                                               ; preds = %21
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = call %struct.thermal_cooling_device* @thermal_cooling_device_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.acpi_device* %30, i32* @memory_cooling_ops)
  store %struct.thermal_cooling_device* %31, %struct.thermal_cooling_device** %5, align 8
  %32 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %33 = call i64 @IS_ERR(%struct.thermal_cooling_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %37 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %36)
  store i32 %37, i32* %4, align 4
  br label %68

38:                                               ; preds = %29
  %39 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %40 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 1
  store %struct.thermal_cooling_device* %39, %struct.thermal_cooling_device** %41, align 8
  %42 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %46 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @sysfs_create_link(i32* %44, i32* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %70

52:                                               ; preds = %38
  %53 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %54 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %57 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @sysfs_create_link(i32* %55, i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %64 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @sysfs_remove_link(i32* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %70

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %35, %28, %20
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %74

70:                                               ; preds = %62, %51
  %71 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %72 = call i32 @thermal_cooling_device_unregister(%struct.thermal_cooling_device* %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %68, %10
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @acpi_has_method(i32, i32) #1

declare dso_local %struct.thermal_cooling_device* @thermal_cooling_device_register(i8*, %struct.acpi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_cooling_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_cooling_device*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @thermal_cooling_device_unregister(%struct.thermal_cooling_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
