; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_backlight_notify_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_backlight_notify_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ideapad_private = type { %struct.TYPE_3__*, %struct.backlight_device* }
%struct.TYPE_3__ = type { i32 }
%struct.backlight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@VPCCMD_R_BL_POWER = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ideapad_private*)* @ideapad_backlight_notify_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ideapad_backlight_notify_power(%struct.ideapad_private* %0) #0 {
  %2 = alloca %struct.ideapad_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.backlight_device*, align 8
  store %struct.ideapad_private* %0, %struct.ideapad_private** %2, align 8
  %5 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %6 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %5, i32 0, i32 1
  %7 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  store %struct.backlight_device* %7, %struct.backlight_device** %4, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %9 = icmp ne %struct.backlight_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %13 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VPCCMD_R_BL_POWER, align 4
  %18 = call i64 @read_ec_data(i32 %16, i32 %17, i64* %3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %33

21:                                               ; preds = %11
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %31 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %20, %10
  ret void
}

declare dso_local i64 @read_ec_data(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
