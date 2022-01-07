; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_wait_for_vsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_wait_for_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@DISPC_IRQ_EVSYNC_ODD = common dso_local global i32 0, align 4
@DISPC_IRQ_EVSYNC_EVEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*)* @dss_mgr_wait_for_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_mgr_wait_for_vsync(%struct.omap_overlay_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_overlay_manager*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %3, align 8
  %7 = call i64 @msecs_to_jiffies(i32 500)
  store i64 %7, i64* %4, align 8
  %8 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %9 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = call i32 (...) @dispc_runtime_get()
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %15
  %22 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %23 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %31 [
    i32 128, label %27
    i32 129, label %29
  ]

27:                                               ; preds = %21
  %28 = load i32, i32* @DISPC_IRQ_EVSYNC_ODD, align 4
  store i32 %28, i32* %5, align 4
  br label %36

29:                                               ; preds = %21
  %30 = load i32, i32* @DISPC_IRQ_EVSYNC_EVEN, align 4
  store i32 %30, i32* %5, align 4
  br label %36

31:                                               ; preds = %21
  %32 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %33 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dispc_mgr_get_vsync_irq(i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %29, %27
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @omap_dispc_wait_for_irq_interruptible_timeout(i32 %37, i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = call i32 (...) @dispc_runtime_put()
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %36, %19, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dispc_runtime_get(...) #1

declare dso_local i32 @dispc_mgr_get_vsync_irq(i32) #1

declare dso_local i32 @omap_dispc_wait_for_irq_interruptible_timeout(i32, i64) #1

declare dso_local i32 @dispc_runtime_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
