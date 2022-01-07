; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp8788_bl.c_lp8788_backlight_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp8788_bl.c_lp8788_backlight_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_bl = type { %struct.backlight_device* }
%struct.backlight_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp8788_bl*)* @lp8788_backlight_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp8788_backlight_unregister(%struct.lp8788_bl* %0) #0 {
  %2 = alloca %struct.lp8788_bl*, align 8
  %3 = alloca %struct.backlight_device*, align 8
  store %struct.lp8788_bl* %0, %struct.lp8788_bl** %2, align 8
  %4 = load %struct.lp8788_bl*, %struct.lp8788_bl** %2, align 8
  %5 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %4, i32 0, i32 0
  %6 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  store %struct.backlight_device* %6, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call i32 @backlight_device_unregister(%struct.backlight_device* %7)
  ret void
}

declare dso_local i32 @backlight_device_unregister(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
