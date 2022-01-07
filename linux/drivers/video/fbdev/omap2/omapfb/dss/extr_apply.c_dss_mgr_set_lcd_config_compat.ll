; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_set_lcd_config_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_set_lcd_config_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 }
%struct.dss_lcd_mgr_config = type { i32 }
%struct.mgr_priv_data = type { i64 }

@data_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"cannot apply lcd config for %s: manager needs to be disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_overlay_manager*, %struct.dss_lcd_mgr_config*)* @dss_mgr_set_lcd_config_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_mgr_set_lcd_config_compat(%struct.omap_overlay_manager* %0, %struct.dss_lcd_mgr_config* %1) #0 {
  %3 = alloca %struct.omap_overlay_manager*, align 8
  %4 = alloca %struct.dss_lcd_mgr_config*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mgr_priv_data*, align 8
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %3, align 8
  store %struct.dss_lcd_mgr_config* %1, %struct.dss_lcd_mgr_config** %4, align 8
  %7 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %8 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %7)
  store %struct.mgr_priv_data* %8, %struct.mgr_priv_data** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %9)
  %11 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %6, align 8
  %12 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %17 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DSSERR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %22 = load %struct.dss_lcd_mgr_config*, %struct.dss_lcd_mgr_config** %4, align 8
  %23 = call i32 @dss_apply_mgr_lcd_config(%struct.omap_overlay_manager* %21, %struct.dss_lcd_mgr_config* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %25)
  ret void
}

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @dss_apply_mgr_lcd_config(%struct.omap_overlay_manager*, %struct.dss_lcd_mgr_config*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
