; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager_info = type { i32, i32, i32, i32, i32, i32, i32 }

@FEAT_CPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispc_mgr_setup(i32 %0, %struct.omap_overlay_manager_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_overlay_manager_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.omap_overlay_manager_info* %1, %struct.omap_overlay_manager_info** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.omap_overlay_manager_info*, %struct.omap_overlay_manager_info** %4, align 8
  %7 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dispc_mgr_set_default_color(i32 %5, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.omap_overlay_manager_info*, %struct.omap_overlay_manager_info** %4, align 8
  %12 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.omap_overlay_manager_info*, %struct.omap_overlay_manager_info** %4, align 8
  %15 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dispc_mgr_set_trans_key(i32 %10, i32 %13, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.omap_overlay_manager_info*, %struct.omap_overlay_manager_info** %4, align 8
  %20 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dispc_mgr_enable_trans_key(i32 %18, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.omap_overlay_manager_info*, %struct.omap_overlay_manager_info** %4, align 8
  %25 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dispc_mgr_enable_alpha_fixed_zorder(i32 %23, i32 %26)
  %28 = load i32, i32* @FEAT_CPR, align 4
  %29 = call i64 @dss_has_feature(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.omap_overlay_manager_info*, %struct.omap_overlay_manager_info** %4, align 8
  %34 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dispc_mgr_enable_cpr(i32 %32, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.omap_overlay_manager_info*, %struct.omap_overlay_manager_info** %4, align 8
  %39 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %38, i32 0, i32 0
  %40 = call i32 @dispc_mgr_set_cpr_coef(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @dispc_mgr_set_default_color(i32, i32) #1

declare dso_local i32 @dispc_mgr_set_trans_key(i32, i32, i32) #1

declare dso_local i32 @dispc_mgr_enable_trans_key(i32, i32) #1

declare dso_local i32 @dispc_mgr_enable_alpha_fixed_zorder(i32, i32) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @dispc_mgr_enable_cpr(i32, i32) #1

declare dso_local i32 @dispc_mgr_set_cpr_coef(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
