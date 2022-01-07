; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_da9052_bl.c_da9052_backlight_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_da9052_bl.c_da9052_backlight_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.da9052_bl = type { i32, i32 }

@DA9052_WLEDS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @da9052_backlight_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_backlight_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9052_bl*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %10 = call %struct.da9052_bl* @bl_get_data(%struct.backlight_device* %9)
  store %struct.da9052_bl* %10, %struct.da9052_bl** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.da9052_bl*, %struct.da9052_bl** %4, align 8
  %13 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @DA9052_WLEDS_ON, align 4
  %15 = load %struct.da9052_bl*, %struct.da9052_bl** %4, align 8
  %16 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.da9052_bl*, %struct.da9052_bl** %4, align 8
  %18 = call i32 @da9052_adjust_wled_brightness(%struct.da9052_bl* %17)
  ret i32 %18
}

declare dso_local %struct.da9052_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @da9052_adjust_wled_brightness(%struct.da9052_bl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
