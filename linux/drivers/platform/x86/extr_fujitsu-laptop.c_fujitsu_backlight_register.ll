; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_fujitsu_backlight_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_fujitsu_backlight_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.fujitsu_bl = type { %struct.backlight_device*, i32, i32 }
%struct.backlight_device = type { i32 }
%struct.backlight_properties = type { i32, i32, i32 }

@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fujitsu-laptop\00", align 1
@fujitsu_bl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @fujitsu_backlight_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fujitsu_backlight_register(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.fujitsu_bl*, align 8
  %5 = alloca %struct.backlight_properties, align 4
  %6 = alloca %struct.backlight_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = call %struct.fujitsu_bl* @acpi_driver_data(%struct.acpi_device* %7)
  store %struct.fujitsu_bl* %8, %struct.fujitsu_bl** %4, align 8
  %9 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 0
  %10 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 1
  %12 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %13 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %11, align 4
  %16 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 2
  %17 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %18 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  %22 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 0
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = call %struct.backlight_device* @devm_backlight_device_register(i32* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %23, %struct.acpi_device* %24, i32* @fujitsu_bl_ops, %struct.backlight_properties* %5)
  store %struct.backlight_device* %25, %struct.backlight_device** %6, align 8
  %26 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %27 = call i64 @IS_ERR(%struct.backlight_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %31 = call i32 @PTR_ERR(%struct.backlight_device* %30)
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %34 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %35 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %34, i32 0, i32 0
  store %struct.backlight_device* %33, %struct.backlight_device** %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.fujitsu_bl* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32*, i8*, i32*, %struct.acpi_device*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
