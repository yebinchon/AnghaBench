; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_register_framedone_handler_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_register_framedone_handler_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 }
%struct.mgr_priv_data = type { void (i8*)*, i8* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*, void (i8*)*, i8*)* @dss_mgr_register_framedone_handler_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_mgr_register_framedone_handler_compat(%struct.omap_overlay_manager* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_overlay_manager*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mgr_priv_data*, align 8
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %10 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %9)
  store %struct.mgr_priv_data* %10, %struct.mgr_priv_data** %8, align 8
  %11 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %8, align 8
  %12 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %11, i32 0, i32 0
  %13 = load void (i8*)*, void (i8*)** %12, align 8
  %14 = icmp ne void (i8*)* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load void (i8*)*, void (i8*)** %6, align 8
  %20 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %8, align 8
  %21 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %20, i32 0, i32 0
  store void (i8*)* %19, void (i8*)** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %8, align 8
  %24 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
