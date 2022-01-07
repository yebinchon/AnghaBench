; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.asus_laptop = type { i32 }

@METHOD_BRIGHTNESS_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error changing brightness\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*, i32)* @asus_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_set_brightness(%struct.backlight_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asus_laptop*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %8 = call %struct.asus_laptop* @bl_get_data(%struct.backlight_device* %7)
  store %struct.asus_laptop* %8, %struct.asus_laptop** %6, align 8
  %9 = load %struct.asus_laptop*, %struct.asus_laptop** %6, align 8
  %10 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @METHOD_BRIGHTNESS_SET, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @write_acpi_int(i32 %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.asus_laptop* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i64 @write_acpi_int(i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
