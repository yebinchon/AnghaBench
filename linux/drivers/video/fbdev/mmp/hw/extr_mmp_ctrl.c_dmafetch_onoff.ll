; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_dmafetch_onoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_dmafetch_onoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_overlay = type { i32, %struct.mmp_path* }
%struct.mmp_path = type { i32 }

@CFG_DMA_ENA_MASK = common dso_local global i32 0, align 4
@CFG_GRA_ENA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_overlay*, i32)* @dmafetch_onoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmafetch_onoff(%struct.mmp_overlay* %0, i32 %1) #0 {
  %3 = alloca %struct.mmp_overlay*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmp_path*, align 8
  store %struct.mmp_overlay* %0, %struct.mmp_overlay** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %10 = call i64 @overlay_is_vid(%struct.mmp_overlay* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @CFG_DMA_ENA_MASK, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @CFG_GRA_ENA_MASK, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %19 = call i64 @overlay_is_vid(%struct.mmp_overlay* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @CFG_DMA_ENA(i32 1)
  br label %25

23:                                               ; preds = %16
  %24 = call i32 @CFG_GRA_ENA(i32 1)
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %6, align 4
  %27 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %28 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %27, i32 0, i32 1
  %29 = load %struct.mmp_path*, %struct.mmp_path** %28, align 8
  store %struct.mmp_path* %29, %struct.mmp_path** %8, align 8
  %30 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %31 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.mmp_path*, %struct.mmp_path** %8, align 8
  %34 = call i64 @ctrl_regs(%struct.mmp_path* %33)
  %35 = load %struct.mmp_path*, %struct.mmp_path** %8, align 8
  %36 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @dma_ctrl(i32 0, i32 %37)
  %39 = add nsw i64 %34, %38
  %40 = call i32 @readl_relaxed(i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %25
  %48 = load i32, i32* %6, align 4
  br label %50

49:                                               ; preds = %25
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.mmp_path*, %struct.mmp_path** %8, align 8
  %56 = call i64 @ctrl_regs(%struct.mmp_path* %55)
  %57 = load %struct.mmp_path*, %struct.mmp_path** %8, align 8
  %58 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @dma_ctrl(i32 0, i32 %59)
  %61 = add nsw i64 %56, %60
  %62 = call i32 @writel(i32 %54, i64 %61)
  %63 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %64 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  ret void
}

declare dso_local i64 @overlay_is_vid(%struct.mmp_overlay*) #1

declare dso_local i32 @CFG_DMA_ENA(i32) #1

declare dso_local i32 @CFG_GRA_ENA(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ctrl_regs(%struct.mmp_path*) #1

declare dso_local i64 @dma_ctrl(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
