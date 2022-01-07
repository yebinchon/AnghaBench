; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_overlay_set_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_overlay_set_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_overlay = type { i32, i32, i32 }
%struct.mmp_win = type { i32*, i32, i32, i32, i32, i32, i32 }
%struct.lcd_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_overlay*, %struct.mmp_win*)* @overlay_set_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overlay_set_win(%struct.mmp_overlay* %0, %struct.mmp_win* %1) #0 {
  %3 = alloca %struct.mmp_overlay*, align 8
  %4 = alloca %struct.mmp_win*, align 8
  %5 = alloca %struct.lcd_regs*, align 8
  store %struct.mmp_overlay* %0, %struct.mmp_overlay** %3, align 8
  store %struct.mmp_win* %1, %struct.mmp_win** %4, align 8
  %6 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %7 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.lcd_regs* @path_regs(i32 %8)
  store %struct.lcd_regs* %9, %struct.lcd_regs** %5, align 8
  %10 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %11 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %10, i32 0, i32 1
  %12 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %13 = call i32 @memcpy(i32* %11, %struct.mmp_win* %12, i32 32)
  %14 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %15 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %18 = call i64 @overlay_is_vid(%struct.mmp_overlay* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %77

20:                                               ; preds = %2
  %21 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %22 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %27 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %26, i32 0, i32 8
  %28 = call i32 @writel_relaxed(i32 %25, i32* %27)
  %29 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %30 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %36 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %34, %39
  %41 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %42 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %41, i32 0, i32 7
  %43 = call i32 @writel_relaxed(i32 %40, i32* %42)
  %44 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %45 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %46, 16
  %48 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %49 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  %52 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %53 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %52, i32 0, i32 6
  %54 = call i32 @writel_relaxed(i32 %51, i32* %53)
  %55 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %56 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 16
  %59 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %60 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  %63 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %64 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %63, i32 0, i32 5
  %65 = call i32 @writel_relaxed(i32 %62, i32* %64)
  %66 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %67 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %68, 16
  %70 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %71 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %69, %72
  %74 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %75 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %74, i32 0, i32 4
  %76 = call i32 @writel_relaxed(i32 %73, i32* %75)
  br label %119

77:                                               ; preds = %2
  %78 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %79 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %84 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %83, i32 0, i32 3
  %85 = call i32 @writel_relaxed(i32 %82, i32* %84)
  %86 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %87 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 16
  %90 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %91 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %89, %92
  %94 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %95 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %94, i32 0, i32 2
  %96 = call i32 @writel_relaxed(i32 %93, i32* %95)
  %97 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %98 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 16
  %101 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %102 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %100, %103
  %105 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %106 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %105, i32 0, i32 1
  %107 = call i32 @writel_relaxed(i32 %104, i32* %106)
  %108 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %109 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %110, 16
  %112 = load %struct.mmp_win*, %struct.mmp_win** %4, align 8
  %113 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %111, %114
  %116 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %117 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %116, i32 0, i32 0
  %118 = call i32 @writel_relaxed(i32 %115, i32* %117)
  br label %119

119:                                              ; preds = %77, %20
  %120 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %121 = call i32 @dmafetch_set_fmt(%struct.mmp_overlay* %120)
  %122 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %123 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  ret void
}

declare dso_local %struct.lcd_regs* @path_regs(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mmp_win*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @overlay_is_vid(%struct.mmp_overlay*) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

declare dso_local i32 @dmafetch_set_fmt(%struct.mmp_overlay*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
