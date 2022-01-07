; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_unregister_framedone_handler_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_unregister_framedone_handler_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 }
%struct.mgr_priv_data = type { void (i8*)*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_overlay_manager*, void (i8*)*, i8*)* @dss_mgr_unregister_framedone_handler_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_mgr_unregister_framedone_handler_compat(%struct.omap_overlay_manager* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.omap_overlay_manager*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mgr_priv_data*, align 8
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %9 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %8)
  store %struct.mgr_priv_data* %9, %struct.mgr_priv_data** %7, align 8
  %10 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %7, align 8
  %11 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %10, i32 0, i32 0
  %12 = load void (i8*)*, void (i8*)** %11, align 8
  %13 = load void (i8*)*, void (i8*)** %5, align 8
  %14 = icmp ne void (i8*)* %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %7, align 8
  %17 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %18, %19
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ true, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %7, align 8
  %26 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %25, i32 0, i32 0
  store void (i8*)* null, void (i8*)** %26, align 8
  %27 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %7, align 8
  %28 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %27, i32 0, i32 1
  store i8* null, i8** %28, align 8
  ret void
}

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
