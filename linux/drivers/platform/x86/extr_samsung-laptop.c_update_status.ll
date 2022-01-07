; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.samsung_laptop = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sabi_commands }
%struct.sabi_commands = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.samsung_laptop*, align 8
  %4 = alloca %struct.sabi_commands*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = call %struct.samsung_laptop* @bl_get_data(%struct.backlight_device* %5)
  store %struct.samsung_laptop* %6, %struct.samsung_laptop** %3, align 8
  %7 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %8 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.sabi_commands* %10, %struct.sabi_commands** %4, align 8
  %11 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %12 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %13 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @set_brightness(%struct.samsung_laptop* %11, i32 %15)
  %17 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %18 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %25 = load %struct.sabi_commands*, %struct.sabi_commands** %4, align 8
  %26 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sabi_set_commandb(%struct.samsung_laptop* %24, i32 %27, i32 1)
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.samsung_laptop*, %struct.samsung_laptop** %3, align 8
  %31 = load %struct.sabi_commands*, %struct.sabi_commands** %4, align 8
  %32 = getelementptr inbounds %struct.sabi_commands, %struct.sabi_commands* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sabi_set_commandb(%struct.samsung_laptop* %30, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %29, %23
  ret i32 0
}

declare dso_local %struct.samsung_laptop* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @set_brightness(%struct.samsung_laptop*, i32) #1

declare dso_local i32 @sabi_set_commandb(%struct.samsung_laptop*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
