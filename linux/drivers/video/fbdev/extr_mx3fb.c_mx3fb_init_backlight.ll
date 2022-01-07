; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_init_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_init_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx3fb_data = type { %struct.backlight_device*, i32, i32 }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.backlight_properties = type { i32, i32 }

@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mx3fb-bl\00", align 1
@mx3fb_lcdc_bl_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error %ld on backlight register\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mx3fb_data*)* @mx3fb_init_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx3fb_init_backlight(%struct.mx3fb_data* %0) #0 {
  %2 = alloca %struct.mx3fb_data*, align 8
  %3 = alloca %struct.backlight_properties, align 4
  %4 = alloca %struct.backlight_device*, align 8
  store %struct.mx3fb_data* %0, %struct.mx3fb_data** %2, align 8
  %5 = load %struct.mx3fb_data*, %struct.mx3fb_data** %2, align 8
  %6 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %5, i32 0, i32 0
  %7 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %8 = icmp ne %struct.backlight_device* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %52

10:                                               ; preds = %1
  %11 = call i32 @memset(%struct.backlight_properties* %3, i32 0, i32 8)
  %12 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %3, i32 0, i32 0
  store i32 255, i32* %12, align 4
  %13 = load i32, i32* @BACKLIGHT_RAW, align 4
  %14 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %3, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.mx3fb_data*, %struct.mx3fb_data** %2, align 8
  %16 = load %struct.mx3fb_data*, %struct.mx3fb_data** %2, align 8
  %17 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sdc_set_brightness(%struct.mx3fb_data* %15, i32 %18)
  %20 = load %struct.mx3fb_data*, %struct.mx3fb_data** %2, align 8
  %21 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mx3fb_data*, %struct.mx3fb_data** %2, align 8
  %24 = call %struct.backlight_device* @backlight_device_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.mx3fb_data* %23, i32* @mx3fb_lcdc_bl_ops, %struct.backlight_properties* %3)
  store %struct.backlight_device* %24, %struct.backlight_device** %4, align 8
  %25 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %26 = call i64 @IS_ERR(%struct.backlight_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %10
  %29 = load %struct.mx3fb_data*, %struct.mx3fb_data** %2, align 8
  %30 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %33 = call i32 @PTR_ERR(%struct.backlight_device* %32)
  %34 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %52

35:                                               ; preds = %10
  %36 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %37 = load %struct.mx3fb_data*, %struct.mx3fb_data** %2, align 8
  %38 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %37, i32 0, i32 0
  store %struct.backlight_device* %36, %struct.backlight_device** %38, align 8
  %39 = load i8*, i8** @FB_BLANK_UNBLANK, align 8
  %40 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %41 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** @FB_BLANK_UNBLANK, align 8
  %44 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %45 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %48 = call i32 @mx3fb_bl_get_brightness(%struct.backlight_device* %47)
  %49 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %50 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  br label %52

52:                                               ; preds = %35, %28, %9
  ret void
}

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local i32 @sdc_set_brightness(%struct.mx3fb_data*, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, i32, %struct.mx3fb_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @mx3fb_bl_get_brightness(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
