; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_bl_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_bl_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.fujitsu_bl = type { i32, i32 }

@ACPI_FUJITSU_NOTIFY_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported event [0x%x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"brightness button event [%i -> %i]\0A\00", align 1
@disable_brightness_adjust = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_fujitsu_bl_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_fujitsu_bl_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fujitsu_bl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = call %struct.fujitsu_bl* @acpi_driver_data(%struct.acpi_device* %8)
  store %struct.fujitsu_bl* %9, %struct.fujitsu_bl** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ACPI_FUJITSU_NOTIFY_CODE, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @acpi_handle_info(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %5, align 8
  %20 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sparse_keymap_report_event(i32 %21, i32 -1, i32 1, i32 1)
  br label %58

23:                                               ; preds = %2
  %24 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %5, align 8
  %25 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %28 = call i32 @get_lcd_level(%struct.acpi_device* %27)
  %29 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %5, align 8
  %30 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @acpi_handle_debug(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %58

42:                                               ; preds = %23
  %43 = load i32, i32* @disable_brightness_adjust, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @set_lcd_level(%struct.acpi_device* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.fujitsu_bl*, %struct.fujitsu_bl** %5, align 8
  %51 = getelementptr inbounds %struct.fujitsu_bl, %struct.fujitsu_bl* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @sparse_keymap_report_event(i32 %52, i32 %56, i32 1, i32 1)
  br label %58

58:                                               ; preds = %49, %41, %13
  ret void
}

declare dso_local %struct.fujitsu_bl* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_handle_info(i32, i8*, i32) #1

declare dso_local i32 @sparse_keymap_report_event(i32, i32, i32, i32) #1

declare dso_local i32 @get_lcd_level(%struct.acpi_device*) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @set_lcd_level(%struct.acpi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
