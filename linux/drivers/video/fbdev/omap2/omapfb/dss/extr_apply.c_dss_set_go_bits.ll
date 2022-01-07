; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_set_go_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_set_go_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.omap_overlay_manager = type { i32 }
%struct.mgr_priv_data = type { i32, i32 }

@dss_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dss_set_go_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_set_go_bits() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_overlay_manager*, align 8
  %4 = alloca %struct.mgr_priv_data*, align 8
  %5 = call i32 (...) @omap_dss_get_num_overlay_managers()
  store i32 %5, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %49, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %52

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32 %11)
  store %struct.omap_overlay_manager* %12, %struct.omap_overlay_manager** %3, align 8
  %13 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %14 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %13)
  store %struct.mgr_priv_data* %14, %struct.mgr_priv_data** %4, align 8
  %15 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %4, align 8
  %16 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %21 = call i64 @mgr_manual_update(%struct.omap_overlay_manager* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %4, align 8
  %25 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %19, %10
  br label %49

29:                                               ; preds = %23
  %30 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %31 = call i32 @need_go(%struct.omap_overlay_manager* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %49

34:                                               ; preds = %29
  %35 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %4, align 8
  %36 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dss_data, i32 0, i32 0), align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = call i64 (...) @need_isr()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (...) @dss_register_vsync_isr()
  br label %44

44:                                               ; preds = %42, %39, %34
  %45 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %46 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dispc_mgr_go(i32 %47)
  br label %49

49:                                               ; preds = %44, %33, %28
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %6

52:                                               ; preds = %6
  ret void
}

declare dso_local i32 @omap_dss_get_num_overlay_managers(...) #1

declare dso_local %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32) #1

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

declare dso_local i64 @mgr_manual_update(%struct.omap_overlay_manager*) #1

declare dso_local i32 @need_go(%struct.omap_overlay_manager*) #1

declare dso_local i64 @need_isr(...) #1

declare dso_local i32 @dss_register_vsync_isr(...) #1

declare dso_local i32 @dispc_mgr_go(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
