; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_set_manager.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_set_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { i32, %struct.omap_overlay_manager*, i32, i32 }
%struct.omap_overlay_manager = type { i32, i32, i32 }
%struct.ovl_priv_data = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@apply_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"overlay '%s' already has a manager '%s'\0A\00", align 1
@data_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"overlay has to be disabled to change the manager\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay*, %struct.omap_overlay_manager*)* @dss_ovl_set_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_ovl_set_manager(%struct.omap_overlay* %0, %struct.omap_overlay_manager* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_overlay*, align 8
  %5 = alloca %struct.omap_overlay_manager*, align 8
  %6 = alloca %struct.ovl_priv_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.omap_overlay* %0, %struct.omap_overlay** %4, align 8
  store %struct.omap_overlay_manager* %1, %struct.omap_overlay_manager** %5, align 8
  %9 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %10 = call %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay* %9)
  store %struct.ovl_priv_data* %10, %struct.ovl_priv_data** %6, align 8
  %11 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %12 = icmp ne %struct.omap_overlay_manager* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %77

16:                                               ; preds = %2
  %17 = call i32 @mutex_lock(i32* @apply_lock)
  %18 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %19 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %18, i32 0, i32 1
  %20 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %19, align 8
  %21 = icmp ne %struct.omap_overlay_manager* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %24 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %27 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %26, i32 0, i32 1
  %28 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %27, align 8
  %29 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %74

34:                                               ; preds = %16
  %35 = call i32 (...) @dispc_runtime_get()
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %74

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %40)
  %42 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %6, align 8
  %43 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %47)
  %49 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %72

52:                                               ; preds = %39
  %53 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %54 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %57 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dispc_ovl_set_channel_out(i32 %55, i32 %58)
  %60 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %61 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %62 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %61, i32 0, i32 1
  store %struct.omap_overlay_manager* %60, %struct.omap_overlay_manager** %62, align 8
  %63 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %64 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %63, i32 0, i32 0
  %65 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %66 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %65, i32 0, i32 0
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %68)
  %70 = call i32 (...) @dispc_runtime_put()
  %71 = call i32 @mutex_unlock(i32* @apply_lock)
  store i32 0, i32* %3, align 4
  br label %77

72:                                               ; preds = %46
  %73 = call i32 (...) @dispc_runtime_put()
  br label %74

74:                                               ; preds = %72, %38, %22
  %75 = call i32 @mutex_unlock(i32* @apply_lock)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %52, %13
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @dispc_runtime_get(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dispc_ovl_set_channel_out(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dispc_runtime_put(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
