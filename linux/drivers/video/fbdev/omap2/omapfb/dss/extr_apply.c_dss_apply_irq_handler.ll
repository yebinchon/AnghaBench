; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_apply_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_apply_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 }
%struct.mgr_priv_data = type { i32, i32, i32 (i32)*, i32, i32 }

@data_lock = common dso_local global i32 0, align 4
@extra_updated_completion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dss_apply_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_apply_irq_handler(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_overlay_manager*, align 8
  %9 = alloca %struct.mgr_priv_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.omap_overlay_manager*, align 8
  %12 = alloca %struct.mgr_priv_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = call i32 (...) @dss_feat_get_num_mgrs()
  store i32 %13, i32* %5, align 4
  %14 = call i32 @spin_lock(i32* @data_lock)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %57, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32 %20)
  store %struct.omap_overlay_manager* %21, %struct.omap_overlay_manager** %8, align 8
  %22 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %23 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %22)
  store %struct.mgr_priv_data* %23, %struct.mgr_priv_data** %9, align 8
  %24 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %9, align 8
  %25 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %57

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dispc_mgr_is_enabled(i32 %30)
  %32 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %9, align 8
  %33 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %35 = call i32 @mgr_manual_update(%struct.omap_overlay_manager* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %29
  %38 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %9, align 8
  %39 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @dispc_mgr_go_busy(i32 %41)
  %43 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %9, align 8
  %44 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %9, align 8
  %49 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %54 = call i32 @mgr_clear_shadow_dirty(%struct.omap_overlay_manager* %53)
  br label %55

55:                                               ; preds = %52, %47, %37
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %15

60:                                               ; preds = %15
  %61 = call i32 (...) @dss_write_regs()
  %62 = call i32 (...) @dss_set_go_bits()
  %63 = call i32 (...) @extra_info_update_ongoing()
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = call i32 @complete_all(i32* @extra_updated_completion)
  br label %68

68:                                               ; preds = %66, %60
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %102, %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = call %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32 %74)
  store %struct.omap_overlay_manager* %75, %struct.omap_overlay_manager** %11, align 8
  %76 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %11, align 8
  %77 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %76)
  store %struct.mgr_priv_data* %77, %struct.mgr_priv_data** %12, align 8
  %78 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %11, align 8
  %79 = call i32 @mgr_manual_update(%struct.omap_overlay_manager* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %12, align 8
  %83 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %82, i32 0, i32 2
  %84 = load i32 (i32)*, i32 (i32)** %83, align 8
  %85 = icmp ne i32 (i32)* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81, %73
  br label %102

87:                                               ; preds = %81
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @dispc_mgr_get_framedone_irq(i32 %89)
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %12, align 8
  %95 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %94, i32 0, i32 2
  %96 = load i32 (i32)*, i32 (i32)** %95, align 8
  %97 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %12, align 8
  %98 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 %96(i32 %99)
  br label %101

101:                                              ; preds = %93, %87
  br label %102

102:                                              ; preds = %101, %86
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %69

105:                                              ; preds = %69
  %106 = call i32 (...) @need_isr()
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 (...) @dss_unregister_vsync_isr()
  br label %110

110:                                              ; preds = %108, %105
  %111 = call i32 @spin_unlock(i32* @data_lock)
  ret void
}

declare dso_local i32 @dss_feat_get_num_mgrs(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32) #1

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

declare dso_local i32 @dispc_mgr_is_enabled(i32) #1

declare dso_local i32 @mgr_manual_update(%struct.omap_overlay_manager*) #1

declare dso_local i32 @dispc_mgr_go_busy(i32) #1

declare dso_local i32 @mgr_clear_shadow_dirty(%struct.omap_overlay_manager*) #1

declare dso_local i32 @dss_write_regs(...) #1

declare dso_local i32 @dss_set_go_bits(...) #1

declare dso_local i32 @extra_info_update_ongoing(...) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @dispc_mgr_get_framedone_irq(i32) #1

declare dso_local i32 @need_isr(...) #1

declare dso_local i32 @dss_unregister_vsync_isr(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
