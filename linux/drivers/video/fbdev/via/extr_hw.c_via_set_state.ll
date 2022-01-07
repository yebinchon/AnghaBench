; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_via_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_via_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIA_DVP0 = common dso_local global i32 0, align 4
@VIA_CRT = common dso_local global i32 0, align 4
@VIA_DVP1 = common dso_local global i32 0, align 4
@VIA_LVDS1 = common dso_local global i32 0, align 4
@VIA_LVDS2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @via_set_state(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @VIA_DVP0, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @set_dvp0_state(i32 %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @VIA_CRT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @set_crt_state(i32 %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @VIA_DVP1, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @set_dvp1_state(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @VIA_LVDS1, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @set_lvds1_state(i32 %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @VIA_LVDS2, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @set_lvds2_state(i32 %42)
  br label %44

44:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @set_dvp0_state(i32) #1

declare dso_local i32 @set_crt_state(i32) #1

declare dso_local i32 @set_dvp1_state(i32) #1

declare dso_local i32 @set_lvds1_state(i32) #1

declare dso_local i32 @set_lvds2_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
