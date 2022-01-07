; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ep93xx_bl.c_ep93xxbl_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ep93xx_bl.c_ep93xxbl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.ep93xxbl = type { i32, i32 }

@EP93XX_MAX_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*, i32)* @ep93xxbl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xxbl_set(%struct.backlight_device* %0, i32 %1) #0 {
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ep93xxbl*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %7 = call %struct.ep93xxbl* @bl_get_data(%struct.backlight_device* %6)
  store %struct.ep93xxbl* %7, %struct.ep93xxbl** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 %8, 8
  %10 = load i32, i32* @EP93XX_MAX_COUNT, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.ep93xxbl*, %struct.ep93xxbl** %5, align 8
  %13 = getelementptr inbounds %struct.ep93xxbl, %struct.ep93xxbl* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @writel(i32 %11, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ep93xxbl*, %struct.ep93xxbl** %5, align 8
  %18 = getelementptr inbounds %struct.ep93xxbl, %struct.ep93xxbl* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret i32 0
}

declare dso_local %struct.ep93xxbl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
