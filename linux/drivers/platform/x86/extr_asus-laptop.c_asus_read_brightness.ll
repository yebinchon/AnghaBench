; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_read_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_read_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.asus_laptop = type { i32 }

@METHOD_BRIGHTNESS_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error reading brightness\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @asus_read_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_read_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.asus_laptop*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.asus_laptop* @bl_get_data(%struct.backlight_device* %7)
  store %struct.asus_laptop* %8, %struct.asus_laptop** %4, align 8
  %9 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %10 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @METHOD_BRIGHTNESS_GET, align 4
  %13 = call i32 @acpi_evaluate_integer(i32 %11, i32 %12, i32* null, i64* %5)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.asus_laptop* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i32, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
