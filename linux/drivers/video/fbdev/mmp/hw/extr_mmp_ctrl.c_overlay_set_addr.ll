; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_overlay_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_overlay_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_overlay = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.mmp_addr = type { i32* }
%struct.lcd_regs = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmp_overlay*, %struct.mmp_addr*)* @overlay_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_set_addr(%struct.mmp_overlay* %0, %struct.mmp_addr* %1) #0 {
  %3 = alloca %struct.mmp_overlay*, align 8
  %4 = alloca %struct.mmp_addr*, align 8
  %5 = alloca %struct.lcd_regs*, align 8
  store %struct.mmp_overlay* %0, %struct.mmp_overlay** %3, align 8
  store %struct.mmp_addr* %1, %struct.mmp_addr** %4, align 8
  %6 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %7 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.lcd_regs* @path_regs(i32 %8)
  store %struct.lcd_regs* %9, %struct.lcd_regs** %5, align 8
  %10 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %11 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %10, i32 0, i32 0
  %12 = load %struct.mmp_addr*, %struct.mmp_addr** %4, align 8
  %13 = call i32 @memcpy(%struct.TYPE_2__* %11, %struct.mmp_addr* %12, i32 8)
  %14 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %15 = call i64 @overlay_is_vid(%struct.mmp_overlay* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load %struct.mmp_addr*, %struct.mmp_addr** %4, align 8
  %19 = getelementptr inbounds %struct.mmp_addr, %struct.mmp_addr* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %24 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %23, i32 0, i32 3
  %25 = call i32 @writel_relaxed(i32 %22, i32* %24)
  %26 = load %struct.mmp_addr*, %struct.mmp_addr** %4, align 8
  %27 = getelementptr inbounds %struct.mmp_addr, %struct.mmp_addr* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %32 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %31, i32 0, i32 2
  %33 = call i32 @writel_relaxed(i32 %30, i32* %32)
  %34 = load %struct.mmp_addr*, %struct.mmp_addr** %4, align 8
  %35 = getelementptr inbounds %struct.mmp_addr, %struct.mmp_addr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %40 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %39, i32 0, i32 1
  %41 = call i32 @writel_relaxed(i32 %38, i32* %40)
  br label %51

42:                                               ; preds = %2
  %43 = load %struct.mmp_addr*, %struct.mmp_addr** %4, align 8
  %44 = getelementptr inbounds %struct.mmp_addr, %struct.mmp_addr* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lcd_regs*, %struct.lcd_regs** %5, align 8
  %49 = getelementptr inbounds %struct.lcd_regs, %struct.lcd_regs* %48, i32 0, i32 0
  %50 = call i32 @writel_relaxed(i32 %47, i32* %49)
  br label %51

51:                                               ; preds = %42, %17
  %52 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %53 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  ret i32 %57
}

declare dso_local %struct.lcd_regs* @path_regs(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.mmp_addr*, i32) #1

declare dso_local i64 @overlay_is_vid(%struct.mmp_overlay*) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
