; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_hotkey_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_hotkey_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pcc_acpi = type { %struct.pcc_acpi*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@pcc_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_pcc_hotkey_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pcc_hotkey_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.pcc_acpi*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = call %struct.pcc_acpi* @acpi_driver_data(%struct.acpi_device* %5)
  store %struct.pcc_acpi* %6, %struct.pcc_acpi** %4, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %11 = icmp ne %struct.pcc_acpi* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %9
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @sysfs_remove_group(i32* %18, i32* @pcc_attr_group)
  %20 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %21 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @backlight_device_unregister(i32 %22)
  %24 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %25 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @input_unregister_device(i32 %26)
  %28 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %29 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %28, i32 0, i32 0
  %30 = load %struct.pcc_acpi*, %struct.pcc_acpi** %29, align 8
  %31 = call i32 @kfree(%struct.pcc_acpi* %30)
  %32 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %33 = call i32 @kfree(%struct.pcc_acpi* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %15, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.pcc_acpi* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @backlight_device_unregister(i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.pcc_acpi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
