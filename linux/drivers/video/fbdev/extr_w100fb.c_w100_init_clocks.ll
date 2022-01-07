; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_init_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_init_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.w100fb_par = type { i64, %struct.w100_mode* }
%struct.w100_mode = type { i64, i64, i32, i64, i64 }

@CLK_SRC_PLL = common dso_local global i64 0, align 8
@w100_pwr_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@remapped_regs = common dso_local global i64 0, align 8
@mmSCLK_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w100fb_par*)* @w100_init_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100_init_clocks(%struct.w100fb_par* %0) #0 {
  %2 = alloca %struct.w100fb_par*, align 8
  %3 = alloca %struct.w100_mode*, align 8
  store %struct.w100fb_par* %0, %struct.w100fb_par** %2, align 8
  %4 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %5 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %4, i32 0, i32 1
  %6 = load %struct.w100_mode*, %struct.w100_mode** %5, align 8
  store %struct.w100_mode* %6, %struct.w100_mode** %3, align 8
  %7 = load %struct.w100_mode*, %struct.w100_mode** %3, align 8
  %8 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CLK_SRC_PLL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.w100_mode*, %struct.w100_mode** %3, align 8
  %14 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CLK_SRC_PLL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12, %1
  %19 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %20 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %21 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.w100_mode*, %struct.w100_mode** %3, align 8
  %26 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.w100_mode*, %struct.w100_mode** %3, align 8
  %31 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  br label %37

33:                                               ; preds = %24, %18
  %34 = load %struct.w100_mode*, %struct.w100_mode** %3, align 8
  %35 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  %39 = call i32 @w100_set_pll_freq(%struct.w100fb_par* %19, i64 %38)
  br label %40

40:                                               ; preds = %37, %12
  %41 = load %struct.w100_mode*, %struct.w100_mode** %3, align 8
  %42 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 1, i32 0), align 8
  %44 = load %struct.w100_mode*, %struct.w100_mode** %3, align 8
  %45 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 1, i32 2), align 4
  %47 = load %struct.w100_mode*, %struct.w100_mode** %3, align 8
  %48 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 1, i32 1), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @w100_pwr_state, i32 0, i32 0, i32 0), align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* @remapped_regs, align 8
  %53 = load i64, i64* @mmSCLK_CNTL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %51, i64 %54)
  ret void
}

declare dso_local i32 @w100_set_pll_freq(%struct.w100fb_par*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
