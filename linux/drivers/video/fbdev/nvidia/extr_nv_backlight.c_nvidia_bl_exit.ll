; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_backlight.c_nvidia_bl_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_backlight.c_nvidia_bl_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32 }
%struct.fb_info = type { %struct.backlight_device* }
%struct.backlight_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"nvidia: Backlight unloaded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvidia_bl_exit(%struct.nvidia_par* %0) #0 {
  %2 = alloca %struct.nvidia_par*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  store %struct.nvidia_par* %0, %struct.nvidia_par** %2, align 8
  %5 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %6 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.fb_info* @pci_get_drvdata(i32 %7)
  store %struct.fb_info* %8, %struct.fb_info** %3, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  store %struct.backlight_device* %11, %struct.backlight_device** %4, align 8
  %12 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %13 = call i32 @backlight_device_unregister(%struct.backlight_device* %12)
  %14 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.fb_info* @pci_get_drvdata(i32) #1

declare dso_local i32 @backlight_device_unregister(%struct.backlight_device*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
