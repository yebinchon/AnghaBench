; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_bl_input_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_bl_input_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.fujitsu_bl = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s/video/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@keymap_backlight = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_fujitsu_bl_input_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fujitsu_bl_input_setup(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.fujitsu_bl*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = call %struct.fujitsu_bl* @acpi_driver_data(%struct.acpi_device* %6)
  store %struct.fujitsu_bl* %7, %struct.fujitsu_bl** %4, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 0
  %10 = call %struct.TYPE_6__* @devm_input_allocate_device(i32* %9)
  %11 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %12 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %11, i32 0, i32 0
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %12, align 8
  %13 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %14 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %65

20:                                               ; preds = %1
  %21 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %22 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = call i8* @acpi_device_hid(%struct.acpi_device* %24)
  %26 = call i32 @snprintf(i32 %23, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %28 = call i32 @acpi_device_name(%struct.acpi_device* %27)
  %29 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %30 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store i32 %28, i32* %32, align 4
  %33 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %34 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %37 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @BUS_HOST, align 4
  %41 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %42 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 4
  %46 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %47 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 6, i32* %50, align 4
  %51 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %52 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* @keymap_backlight, align 4
  %55 = call i32 @sparse_keymap_setup(%struct.TYPE_6__* %53, i32 %54, i32* null)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %20
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %20
  %61 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %4, align 8
  %62 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @input_register_device(%struct.TYPE_6__* %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %58, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.fujitsu_bl* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local %struct.TYPE_6__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @acpi_device_hid(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @sparse_keymap_setup(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
