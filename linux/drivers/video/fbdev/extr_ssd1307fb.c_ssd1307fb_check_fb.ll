; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_check_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_check_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.fb_info = type { %struct.backlight_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*, %struct.fb_info*)* @ssd1307fb_check_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssd1307fb_check_fb(%struct.backlight_device* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 0
  %7 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = icmp eq %struct.backlight_device* %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
