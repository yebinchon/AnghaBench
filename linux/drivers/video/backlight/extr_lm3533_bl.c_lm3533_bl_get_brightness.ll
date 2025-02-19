; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3533_bl.c_lm3533_bl_get_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3533_bl.c_lm3533_bl_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.lm3533_bl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @lm3533_bl_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3533_bl_get_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.lm3533_bl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.lm3533_bl* @bl_get_data(%struct.backlight_device* %7)
  store %struct.lm3533_bl* %8, %struct.lm3533_bl** %4, align 8
  %9 = load %struct.lm3533_bl*, %struct.lm3533_bl** %4, align 8
  %10 = getelementptr inbounds %struct.lm3533_bl, %struct.lm3533_bl* %9, i32 0, i32 0
  %11 = call i32 @lm3533_ctrlbank_get_brightness(i32* %10, i32* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.lm3533_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @lm3533_ctrlbank_get_brightness(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
