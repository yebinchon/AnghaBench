; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_88pm860x_bl.c_pm860x_backlight_get_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_88pm860x_bl.c_pm860x_backlight_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.pm860x_backlight_data = type { i32, i32, i32, %struct.pm860x_chip* }
%struct.pm860x_chip = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"get brightness %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @pm860x_backlight_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_backlight_get_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.pm860x_backlight_data*, align 8
  %5 = alloca %struct.pm860x_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.pm860x_backlight_data* @bl_get_data(%struct.backlight_device* %7)
  store %struct.pm860x_backlight_data* %8, %struct.pm860x_backlight_data** %4, align 8
  %9 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %4, align 8
  %10 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %9, i32 0, i32 3
  %11 = load %struct.pm860x_chip*, %struct.pm860x_chip** %10, align 8
  store %struct.pm860x_chip* %11, %struct.pm860x_chip** %5, align 8
  %12 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %4, align 8
  %13 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %4, align 8
  %16 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm860x_reg_read(i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %36

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %4, align 8
  %25 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pm860x_chip*, %struct.pm860x_chip** %5, align 8
  %27 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %4, align 8
  %30 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.pm860x_backlight_data*, %struct.pm860x_backlight_data** %4, align 8
  %34 = getelementptr inbounds %struct.pm860x_backlight_data, %struct.pm860x_backlight_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %22
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.pm860x_backlight_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @pm860x_reg_read(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
