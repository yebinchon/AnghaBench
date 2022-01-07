; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_fujitsu_laptop_platform_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_fujitsu_laptop_platform_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.fujitsu_laptop = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"fujitsu-laptop\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fujitsu_pf_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @fujitsu_laptop_platform_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fujitsu_laptop_platform_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.fujitsu_laptop*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = call %struct.fujitsu_laptop* @acpi_driver_data(%struct.acpi_device* %6)
  store %struct.fujitsu_laptop* %7, %struct.fujitsu_laptop** %4, align 8
  %8 = call %struct.TYPE_8__* @platform_device_alloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 -1)
  %9 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %10 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %9, i32 0, i32 0
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %10, align 8
  %11 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %12 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %53

18:                                               ; preds = %1
  %19 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %20 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %23 = call i32 @platform_set_drvdata(%struct.TYPE_8__* %21, %struct.fujitsu_laptop* %22)
  %24 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %25 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i32 @platform_device_add(%struct.TYPE_8__* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %47

31:                                               ; preds = %18
  %32 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %33 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @sysfs_create_group(i32* %36, i32* @fujitsu_pf_attribute_group)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %53

42:                                               ; preds = %40
  %43 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %44 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = call i32 @platform_device_del(%struct.TYPE_8__* %45)
  br label %47

47:                                               ; preds = %42, %30
  %48 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %49 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32 @platform_device_put(%struct.TYPE_8__* %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %41, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.fujitsu_laptop* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local %struct.TYPE_8__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.TYPE_8__*, %struct.fujitsu_laptop*) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_8__*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @platform_device_del(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
