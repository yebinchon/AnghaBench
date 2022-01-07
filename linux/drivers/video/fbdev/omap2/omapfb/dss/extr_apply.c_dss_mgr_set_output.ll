; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_set_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_set_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32, %struct.omap_dss_device*, i32 }
%struct.omap_dss_device = type { i32, %struct.omap_overlay_manager* }

@apply_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"manager %s is already connected to an output\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"output does not support manager %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*, %struct.omap_dss_device*)* @dss_mgr_set_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_mgr_set_output(%struct.omap_overlay_manager* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_overlay_manager*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  %7 = call i32 @mutex_lock(i32* @apply_lock)
  %8 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %9 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %8, i32 0, i32 1
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %11 = icmp ne %struct.omap_dss_device* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %14 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @DSSERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %21 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %24 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %30 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @DSSERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %43

35:                                               ; preds = %19
  %36 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %38 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %37, i32 0, i32 1
  store %struct.omap_overlay_manager* %36, %struct.omap_overlay_manager** %38, align 8
  %39 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %40 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %41 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %40, i32 0, i32 1
  store %struct.omap_dss_device* %39, %struct.omap_dss_device** %41, align 8
  %42 = call i32 @mutex_unlock(i32* @apply_lock)
  store i32 0, i32* %3, align 4
  br label %46

43:                                               ; preds = %28, %12
  %44 = call i32 @mutex_unlock(i32* @apply_lock)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
