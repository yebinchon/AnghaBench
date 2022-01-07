; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_store_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_store_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.regmap = type { i32 }

@SKY81452_REG1 = common dso_local global i32 0, align 4
@SKY81452_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sky81452_bl_store_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky81452_bl_store_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @to_backlight_device(%struct.device* %13)
  %15 = call %struct.regmap* @bl_get_data(i32 %14)
  store %struct.regmap* %15, %struct.regmap** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 16, i64* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %38

22:                                               ; preds = %4
  %23 = load %struct.regmap*, %struct.regmap** %10, align 8
  %24 = load i32, i32* @SKY81452_REG1, align 4
  %25 = load i32, i32* @SKY81452_EN, align 4
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* @SKY81452_EN, align 4
  %28 = call i64 @CTZ(i32 %27)
  %29 = shl i64 %26, %28
  %30 = call i32 @regmap_update_bits(%struct.regmap* %23, i32 %24, i32 %25, i64 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %22
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %33, %20
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.regmap* @bl_get_data(i32) #1

declare dso_local i32 @to_backlight_device(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i64) #1

declare dso_local i64 @CTZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
