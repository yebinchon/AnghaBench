; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pcf50633-backlight.c_pcf50633_bl_set_brightness_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pcf50633-backlight.c_pcf50633_bl_set_brightness_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32 }
%struct.pcf50633_bl = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcf50633_bl_set_brightness_limit(%struct.pcf50633* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcf50633*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcf50633_bl*, align 8
  store %struct.pcf50633* %0, %struct.pcf50633** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %8 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pcf50633_bl* @platform_get_drvdata(i32 %9)
  store %struct.pcf50633_bl* %10, %struct.pcf50633_bl** %6, align 8
  %11 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %6, align 8
  %12 = icmp ne %struct.pcf50633_bl* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 63
  %19 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %6, align 8
  %20 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %6, align 8
  %22 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @backlight_update_status(i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.pcf50633_bl* @platform_get_drvdata(i32) #1

declare dso_local i32 @backlight_update_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
