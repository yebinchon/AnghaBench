; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_haps.c_toshiba_haps_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_haps.c_toshiba_haps_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_haps_dev = type { i32, %struct.acpi_device* }
%struct.acpi_device = type { %struct.TYPE_2__, i32, %struct.toshiba_haps_dev* }
%struct.TYPE_2__ = type { i32 }

@toshiba_haps = common dso_local global %struct.toshiba_haps_dev* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Toshiba HDD Active Protection Sensor device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@haps_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @toshiba_haps_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_haps_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.toshiba_haps_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.toshiba_haps_dev*, %struct.toshiba_haps_dev** @toshiba_haps, align 8
  %7 = icmp ne %struct.toshiba_haps_dev* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @toshiba_haps_available(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %61

20:                                               ; preds = %11
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.toshiba_haps_dev* @kzalloc(i32 16, i32 %22)
  store %struct.toshiba_haps_dev* %23, %struct.toshiba_haps_dev** %4, align 8
  %24 = load %struct.toshiba_haps_dev*, %struct.toshiba_haps_dev** %4, align 8
  %25 = icmp ne %struct.toshiba_haps_dev* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %61

29:                                               ; preds = %20
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = load %struct.toshiba_haps_dev*, %struct.toshiba_haps_dev** %4, align 8
  %32 = getelementptr inbounds %struct.toshiba_haps_dev, %struct.toshiba_haps_dev* %31, i32 0, i32 1
  store %struct.acpi_device* %30, %struct.acpi_device** %32, align 8
  %33 = load %struct.toshiba_haps_dev*, %struct.toshiba_haps_dev** %4, align 8
  %34 = getelementptr inbounds %struct.toshiba_haps_dev, %struct.toshiba_haps_dev* %33, i32 0, i32 0
  store i32 2, i32* %34, align 8
  %35 = load %struct.toshiba_haps_dev*, %struct.toshiba_haps_dev** %4, align 8
  %36 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %36, i32 0, i32 2
  store %struct.toshiba_haps_dev* %35, %struct.toshiba_haps_dev** %37, align 8
  %38 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %38, i32 0, i32 0
  %40 = load %struct.toshiba_haps_dev*, %struct.toshiba_haps_dev** %4, align 8
  %41 = call i32 @dev_set_drvdata(%struct.TYPE_2__* %39, %struct.toshiba_haps_dev* %40)
  %42 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @toshiba_haps_protection_level(i32 %44, i32 2)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %29
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %61

50:                                               ; preds = %29
  %51 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @sysfs_create_group(i32* %53, i32* @haps_attr_group)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load %struct.toshiba_haps_dev*, %struct.toshiba_haps_dev** %4, align 8
  store %struct.toshiba_haps_dev* %60, %struct.toshiba_haps_dev** @toshiba_haps, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %57, %48, %26, %17, %8
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @toshiba_haps_available(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.toshiba_haps_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_2__*, %struct.toshiba_haps_dev*) #1

declare dso_local i32 @toshiba_haps_protection_level(i32, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
