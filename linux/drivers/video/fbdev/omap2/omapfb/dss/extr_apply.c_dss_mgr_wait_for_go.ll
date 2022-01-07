; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_wait_for_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_wait_for_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 }
%struct.mgr_priv_data = type { i32, i32, i32 }

@data_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mgr(%d)->wait_for_go() not finishing\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"mgr(%d)->wait_for_go() timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*)* @dss_mgr_wait_for_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_mgr_wait_for_go(%struct.omap_overlay_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_overlay_manager*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mgr_priv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %3, align 8
  %12 = call i64 @msecs_to_jiffies(i32 500)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %14 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %13)
  store %struct.mgr_priv_data* %14, %struct.mgr_priv_data** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %15)
  %17 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %18 = call i64 @mgr_manual_update(%struct.omap_overlay_manager* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %21)
  store i32 0, i32* %2, align 4
  br label %91

23:                                               ; preds = %1
  %24 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %5, align 8
  %25 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %29)
  store i32 0, i32* %2, align 4
  br label %91

31:                                               ; preds = %23
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %32)
  %34 = call i32 (...) @dispc_runtime_get()
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %2, align 4
  br label %91

39:                                               ; preds = %31
  %40 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %41 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dispc_mgr_get_vsync_irq(i32 %42)
  store i32 %43, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %87
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %45)
  %47 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %5, align 8
  %48 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %5, align 8
  %51 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %88

61:                                               ; preds = %57, %44
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = icmp eq i32 %62, 3
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %67 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DSSERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32 0, i32* %8, align 4
  br label %88

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @omap_dispc_wait_for_irq_interruptible_timeout(i32 %71, i64 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @ERESTARTSYS, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %88

79:                                               ; preds = %70
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %84 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DSSERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %88

87:                                               ; preds = %79
  br label %44

88:                                               ; preds = %82, %78, %65, %60
  %89 = call i32 (...) @dispc_runtime_put()
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %37, %28, %20
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mgr_manual_update(%struct.omap_overlay_manager*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dispc_runtime_get(...) #1

declare dso_local i32 @dispc_mgr_get_vsync_irq(i32) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @omap_dispc_wait_for_irq_interruptible_timeout(i32, i64) #1

declare dso_local i32 @dispc_runtime_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
