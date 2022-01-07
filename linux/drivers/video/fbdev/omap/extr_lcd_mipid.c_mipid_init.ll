; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_mipid.c_mipid_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_mipid.c_mipid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_panel = type { i32 }
%struct.omapfb_device = type { i32 }
%struct.mipid_device = type { i32, i64, i32, i32, %struct.omapfb_device* }

@mipid_esd_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_panel*, %struct.omapfb_device*)* @mipid_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid_init(%struct.lcd_panel* %0, %struct.omapfb_device* %1) #0 {
  %3 = alloca %struct.lcd_panel*, align 8
  %4 = alloca %struct.omapfb_device*, align 8
  %5 = alloca %struct.mipid_device*, align 8
  store %struct.lcd_panel* %0, %struct.lcd_panel** %3, align 8
  store %struct.omapfb_device* %1, %struct.omapfb_device** %4, align 8
  %6 = load %struct.lcd_panel*, %struct.lcd_panel** %3, align 8
  %7 = call %struct.mipid_device* @to_mipid_device(%struct.lcd_panel* %6)
  store %struct.mipid_device* %7, %struct.mipid_device** %5, align 8
  %8 = load %struct.omapfb_device*, %struct.omapfb_device** %4, align 8
  %9 = load %struct.mipid_device*, %struct.mipid_device** %5, align 8
  %10 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %9, i32 0, i32 4
  store %struct.omapfb_device* %8, %struct.omapfb_device** %10, align 8
  %11 = load %struct.mipid_device*, %struct.mipid_device** %5, align 8
  %12 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %11, i32 0, i32 3
  %13 = load i32, i32* @mipid_esd_work, align 4
  %14 = call i32 @INIT_DELAYED_WORK(i32* %12, i32 %13)
  %15 = load %struct.mipid_device*, %struct.mipid_device** %5, align 8
  %16 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %15, i32 0, i32 2
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.mipid_device*, %struct.mipid_device** %5, align 8
  %19 = call i64 @panel_enabled(%struct.mipid_device* %18)
  %20 = load %struct.mipid_device*, %struct.mipid_device** %5, align 8
  %21 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.mipid_device*, %struct.mipid_device** %5, align 8
  %23 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.mipid_device*, %struct.mipid_device** %5, align 8
  %28 = call i32 @mipid_esd_start_check(%struct.mipid_device* %27)
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.lcd_panel*, %struct.lcd_panel** %3, align 8
  %31 = call i32 @mipid_get_bklight_level(%struct.lcd_panel* %30)
  %32 = load %struct.mipid_device*, %struct.mipid_device** %5, align 8
  %33 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %29, %26
  ret i32 0
}

declare dso_local %struct.mipid_device* @to_mipid_device(%struct.lcd_panel*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @panel_enabled(%struct.mipid_device*) #1

declare dso_local i32 @mipid_esd_start_check(%struct.mipid_device*) #1

declare dso_local i32 @mipid_get_bklight_level(%struct.lcd_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
