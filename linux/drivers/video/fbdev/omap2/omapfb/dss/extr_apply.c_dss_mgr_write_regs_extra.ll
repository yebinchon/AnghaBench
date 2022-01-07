; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_write_regs_extra.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_write_regs_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 }
%struct.mgr_priv_data = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"writing mgr %d regs extra\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_overlay_manager*)* @dss_mgr_write_regs_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_mgr_write_regs_extra(%struct.omap_overlay_manager* %0) #0 {
  %2 = alloca %struct.omap_overlay_manager*, align 8
  %3 = alloca %struct.mgr_priv_data*, align 8
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %2, align 8
  %4 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %5 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %4)
  store %struct.mgr_priv_data* %5, %struct.mgr_priv_data** %3, align 8
  %6 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %7 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @DSSDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %3, align 8
  %11 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %17 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %3, align 8
  %20 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %19, i32 0, i32 4
  %21 = call i32 @dispc_mgr_set_timings(i32 %18, i32* %20)
  %22 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %23 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @dss_mgr_is_lcd(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %29 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %3, align 8
  %32 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %31, i32 0, i32 3
  %33 = call i32 @dispc_mgr_set_lcd_config(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %27, %15
  %35 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %3, align 8
  %36 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %3, align 8
  %38 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %3, align 8
  %43 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %14, %41, %34
  ret void
}

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local i32 @dispc_mgr_set_timings(i32, i32*) #1

declare dso_local i64 @dss_mgr_is_lcd(i32) #1

declare dso_local i32 @dispc_mgr_set_lcd_config(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
