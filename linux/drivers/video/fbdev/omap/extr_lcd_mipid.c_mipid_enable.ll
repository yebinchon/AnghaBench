; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_mipid.c_mipid_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_mipid.c_mipid_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }
%struct.mipid_device = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*)* @mipid_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid_enable(%struct.lcd_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcd_panel*, align 8
  %4 = alloca %struct.mipid_device*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %3, align 8
  %5 = load %struct.lcd_panel*, %struct.lcd_panel** %3, align 8
  %6 = call %struct.mipid_device* @to_mipid_device(%struct.lcd_panel* %5)
  store %struct.mipid_device* %6, %struct.mipid_device** %4, align 8
  %7 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %8 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %11 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %16 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %15, i32 0, i32 1
  %17 = call i32 @mutex_unlock(i32* %16)
  store i32 0, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %20 = call i32 @set_sleep_mode(%struct.mipid_device* %19, i32 0)
  %21 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %22 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %24 = call i32 @send_init_string(%struct.mipid_device* %23)
  %25 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %26 = call i32 @set_display_state(%struct.mipid_device* %25, i32 1)
  %27 = load %struct.lcd_panel*, %struct.lcd_panel** %3, align 8
  %28 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %29 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mipid_set_bklight_level(%struct.lcd_panel* %27, i32 %30)
  %32 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %33 = call i32 @mipid_esd_start_check(%struct.mipid_device* %32)
  %34 = load %struct.mipid_device*, %struct.mipid_device** %4, align 8
  %35 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %18, %14
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.mipid_device* @to_mipid_device(%struct.lcd_panel*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_sleep_mode(%struct.mipid_device*, i32) #1

declare dso_local i32 @send_init_string(%struct.mipid_device*) #1

declare dso_local i32 @set_display_state(%struct.mipid_device*, i32) #1

declare dso_local i32 @mipid_set_bklight_level(%struct.lcd_panel*, i32) #1

declare dso_local i32 @mipid_esd_start_check(%struct.mipid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
