; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_backlight.c_radeonfb_bl_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_backlight.c_radeonfb_bl_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.backlight_device* }
%struct.backlight_device = type { i32 }
%struct.radeon_bl_privdata = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"radeonfb: Backlight unloaded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeonfb_bl_exit(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.radeon_bl_privdata*, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %5 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %6 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  store %struct.backlight_device* %9, %struct.backlight_device** %3, align 8
  %10 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %11 = icmp ne %struct.backlight_device* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %14 = call %struct.radeon_bl_privdata* @bl_get_data(%struct.backlight_device* %13)
  store %struct.radeon_bl_privdata* %14, %struct.radeon_bl_privdata** %4, align 8
  %15 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %16 = call i32 @backlight_device_unregister(%struct.backlight_device* %15)
  %17 = load %struct.radeon_bl_privdata*, %struct.radeon_bl_privdata** %4, align 8
  %18 = call i32 @kfree(%struct.radeon_bl_privdata* %17)
  %19 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %20 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.backlight_device* null, %struct.backlight_device** %22, align 8
  %23 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.radeon_bl_privdata* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @backlight_device_unregister(%struct.backlight_device*) #1

declare dso_local i32 @kfree(%struct.radeon_bl_privdata*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
