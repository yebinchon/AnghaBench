; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.ovl_priv_data = type { i32 }

@apply_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@data_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay*)* @dss_ovl_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_ovl_disable(%struct.omap_overlay* %0) #0 {
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
  %10 = load %struct.ovl_priv_data*, %struct.ovl_priv_data** %4, align 8
  %11 = getelementptr inbounds %struct.ovl_priv_data, %struct.ovl_priv_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %17 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp eq %struct.TYPE_2__* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %22 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %15
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %40

30:                                               ; preds = %20
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %31)
  %33 = load %struct.omap_overlay*, %struct.omap_overlay** %3, align 8
  %34 = call i32 @dss_apply_ovl_enable(%struct.omap_overlay* %33, i32 0)
  %35 = call i32 (...) @dss_write_regs()
  %36 = call i32 (...) @dss_set_go_bits()
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %37)
  %39 = call i32 @mutex_unlock(i32* @apply_lock)
  store i32 0, i32* %2, align 4
  br label %43

40:                                               ; preds = %27, %14
  %41 = call i32 @mutex_unlock(i32* @apply_lock)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %30
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.ovl_priv_data* @get_ovl_priv(%struct.omap_overlay*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dss_apply_ovl_enable(%struct.omap_overlay*, i32) #1

declare dso_local i32 @dss_write_regs(...) #1

declare dso_local i32 @dss_set_go_bits(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
