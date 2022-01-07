; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_set_lcd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_set_lcd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_lcd_mgr_config = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispc_mgr_set_lcd_config(i32 %0, %struct.dss_lcd_mgr_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dss_lcd_mgr_config*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.dss_lcd_mgr_config* %1, %struct.dss_lcd_mgr_config** %4, align 8
  %5 = load %struct.dss_lcd_mgr_config*, %struct.dss_lcd_mgr_config** %4, align 8
  %6 = getelementptr inbounds %struct.dss_lcd_mgr_config, %struct.dss_lcd_mgr_config* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dispc_mgr_set_io_pad_mode(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.dss_lcd_mgr_config*, %struct.dss_lcd_mgr_config** %4, align 8
  %11 = getelementptr inbounds %struct.dss_lcd_mgr_config, %struct.dss_lcd_mgr_config* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dispc_mgr_enable_stallmode(i32 %9, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.dss_lcd_mgr_config*, %struct.dss_lcd_mgr_config** %4, align 8
  %16 = getelementptr inbounds %struct.dss_lcd_mgr_config, %struct.dss_lcd_mgr_config* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dispc_mgr_enable_fifohandcheck(i32 %14, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.dss_lcd_mgr_config*, %struct.dss_lcd_mgr_config** %4, align 8
  %21 = getelementptr inbounds %struct.dss_lcd_mgr_config, %struct.dss_lcd_mgr_config* %20, i32 0, i32 2
  %22 = call i32 @dispc_mgr_set_clock_div(i32 %19, i32* %21)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.dss_lcd_mgr_config*, %struct.dss_lcd_mgr_config** %4, align 8
  %25 = getelementptr inbounds %struct.dss_lcd_mgr_config, %struct.dss_lcd_mgr_config* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dispc_mgr_set_tft_data_lines(i32 %23, i32 %26)
  %28 = load %struct.dss_lcd_mgr_config*, %struct.dss_lcd_mgr_config** %4, align 8
  %29 = getelementptr inbounds %struct.dss_lcd_mgr_config, %struct.dss_lcd_mgr_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dispc_lcd_enable_signal_polarity(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @dispc_mgr_set_lcd_type_tft(i32 %32)
  ret void
}

declare dso_local i32 @dispc_mgr_set_io_pad_mode(i32) #1

declare dso_local i32 @dispc_mgr_enable_stallmode(i32, i32) #1

declare dso_local i32 @dispc_mgr_enable_fifohandcheck(i32, i32) #1

declare dso_local i32 @dispc_mgr_set_clock_div(i32, i32*) #1

declare dso_local i32 @dispc_mgr_set_tft_data_lines(i32, i32) #1

declare dso_local i32 @dispc_lcd_enable_signal_polarity(i32) #1

declare dso_local i32 @dispc_mgr_set_lcd_type_tft(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
