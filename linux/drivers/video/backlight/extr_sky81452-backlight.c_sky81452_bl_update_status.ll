; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sky81452_bl_platform_data = type { i32 }
%struct.regmap = type { i32 }

@SKY81452_REG0 = common dso_local global i32 0, align 4
@SKY81452_REG1 = common dso_local global i32 0, align 4
@SKY81452_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @sky81452_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky81452_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.sky81452_bl_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.sky81452_bl_platform_data* @dev_get_platdata(i32 %11)
  store %struct.sky81452_bl_platform_data* %12, %struct.sky81452_bl_platform_data** %4, align 8
  %13 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %14 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %19 = call %struct.regmap* @bl_get_data(%struct.backlight_device* %18)
  store %struct.regmap* %19, %struct.regmap** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load %struct.regmap*, %struct.regmap** %6, align 8
  %24 = load i32, i32* @SKY81452_REG0, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub i32 %25, 1
  %27 = call i32 @regmap_write(%struct.regmap* %23, i32 %24, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %22
  %33 = load %struct.regmap*, %struct.regmap** %6, align 8
  %34 = load i32, i32* @SKY81452_REG1, align 4
  %35 = load i32, i32* @SKY81452_EN, align 4
  %36 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %4, align 8
  %37 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SKY81452_EN, align 4
  %40 = call i32 @CTZ(i32 %39)
  %41 = shl i32 %38, %40
  %42 = call i32 @regmap_update_bits(%struct.regmap* %33, i32 %34, i32 %35, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %1
  %44 = load %struct.regmap*, %struct.regmap** %6, align 8
  %45 = load i32, i32* @SKY81452_REG1, align 4
  %46 = load i32, i32* @SKY81452_EN, align 4
  %47 = call i32 @regmap_update_bits(%struct.regmap* %44, i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %32, %30
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.sky81452_bl_platform_data* @dev_get_platdata(i32) #1

declare dso_local %struct.regmap* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @CTZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
