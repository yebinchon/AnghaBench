; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %6 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @set_backlight_level(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %16 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %23 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %21
  %30 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %31 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %29, %21, %14
  %39 = phi i1 [ false, %21 ], [ false, %14 ], [ %37, %29 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @set_backlight_state(i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @set_backlight_level(i32) #1

declare dso_local i32 @set_backlight_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
