; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_backlight_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_backlight_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { %struct.backlight_device* }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BACKLIGHT_UPDATE_HOTKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeepc_laptop*)* @eeepc_backlight_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_backlight_notify(%struct.eeepc_laptop* %0) #0 {
  %2 = alloca %struct.eeepc_laptop*, align 8
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %2, align 8
  %5 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %6 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %5, i32 0, i32 0
  %7 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  store %struct.backlight_device* %7, %struct.backlight_device** %3, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %13 = load i32, i32* @BACKLIGHT_UPDATE_HOTKEY, align 4
  %14 = call i32 @backlight_force_update(%struct.backlight_device* %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

declare dso_local i32 @backlight_force_update(%struct.backlight_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
