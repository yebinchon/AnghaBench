; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_unset_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_unset_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.mgr_priv_data = type { i64 }

@apply_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to unset output, output not set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@data_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"output can't be unset when manager is enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*)* @dss_mgr_unset_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_mgr_unset_output(%struct.omap_overlay_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_overlay_manager*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mgr_priv_data*, align 8
  %6 = alloca i64, align 8
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %3, align 8
  %7 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %8 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %7)
  store %struct.mgr_priv_data* %8, %struct.mgr_priv_data** %5, align 8
  %9 = call i32 @mutex_lock(i32* @apply_lock)
  %10 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %11 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @DSSERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %19)
  %21 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %5, align 8
  %22 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = call i32 @DSSERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %39

29:                                               ; preds = %18
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %30)
  %32 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %33 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %37 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %36, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %37, align 8
  %38 = call i32 @mutex_unlock(i32* @apply_lock)
  store i32 0, i32* %2, align 4
  br label %45

39:                                               ; preds = %25
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %40)
  br label %42

42:                                               ; preds = %39, %14
  %43 = call i32 @mutex_unlock(i32* @apply_lock)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %29
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
