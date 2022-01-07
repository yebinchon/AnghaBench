; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_unset_manager.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_unset_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { i32, i32* }
%struct.ovl_priv_data = type { i64, i64 }

@apply_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to detach overlay: manager not set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@data_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"overlay has to be disabled to unset the manager\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"need an update to change the manager\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay*)* @dss_ovl_unset_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_ovl_unset_manager(%struct.omap_overlay* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_overlay*, align 8
  %4 = alloca %struct.ovl_priv_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.omap_overlay* %0, %struct.omap_overlay** %3, align 8
  %7 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %8 = call %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay* %7)
  store %struct.ovl_priv_data* %8, %struct.ovl_priv_data** %4, align 8
  %9 = call i32 @mutex_lock(i32* @apply_lock)
  %10 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %11 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @DSSERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %19)
  %21 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %22 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %26)
  %28 = call i32 @DSSERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %60

31:                                               ; preds = %18
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %32)
  %34 = call i32 (...) @wait_pending_extra_info_updates()
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %35)
  %37 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %38 = call i64 @ovl_manual_update(%struct.omap_overlay* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %42 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %46)
  %48 = call i32 @DSSERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %60

51:                                               ; preds = %40, %31
  %52 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %53 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %55 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %54, i32 0, i32 0
  %56 = call i32 @list_del(i32* %55)
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %57)
  %59 = call i32 @mutex_unlock(i32* @apply_lock)
  store i32 0, i32* %2, align 4
  br label %63

60:                                               ; preds = %45, %25, %14
  %61 = call i32 @mutex_unlock(i32* @apply_lock)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %51
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_pending_extra_info_updates(...) #1

declare dso_local i64 @ovl_manual_update(%struct.omap_overlay*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
