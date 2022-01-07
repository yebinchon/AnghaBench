; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetModeID_VGA2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetModeID_VGA2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VB2_SISVGA2BRIDGE = common dso_local global i32 0, align 4
@SIS_315_VGA = common dso_local global i32 0, align 4
@VB2_30xB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetModeID_VGA2(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VB2_SISVGA2BRIDGE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store i16 0, i16* %7, align 2
  br label %63

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = icmp sge i32 %20, 1920
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i16 0, i16* %7, align 2
  br label %63

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %57 [
    i32 1600, label %25
    i32 1680, label %41
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 1200
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SIS_315_VGA, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i16 0, i16* %7, align 2
  br label %63

33:                                               ; preds = %28
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @VB2_30xB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i16 0, i16* %7, align 2
  br label %63

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %25
  br label %57

41:                                               ; preds = %23
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 1050
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SIS_315_VGA, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i16 0, i16* %7, align 2
  br label %63

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @VB2_30xB, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i16 0, i16* %7, align 2
  br label %63

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %23, %56, %40
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call zeroext i16 @SiS_GetModeID(i32 %58, i32 0, i32 %59, i32 %60, i32 %61, i32 0, i32 0, i32 0)
  store i16 %62, i16* %7, align 2
  br label %63

63:                                               ; preds = %57, %54, %48, %38, %32, %22, %18
  %64 = load i16, i16* %7, align 2
  ret i16 %64
}

declare dso_local zeroext i16 @SiS_GetModeID(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
