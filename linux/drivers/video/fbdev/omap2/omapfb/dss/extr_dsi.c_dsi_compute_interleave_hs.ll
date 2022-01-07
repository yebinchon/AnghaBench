; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_compute_interleave_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_compute_interleave_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32)* @dsi_compute_interleave_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_compute_interleave_hs(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %7
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @max(i32 %24, i32 2)
  %26 = add nsw i32 %23, %25
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %15, align 4
  br label %53

28:                                               ; preds = %7
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @max(i32 %34, i32 2)
  %36 = add nsw i32 %33, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @max(i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %28, %20
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %15, align 4
  %60 = sub nsw i32 %58, %59
  br label %62

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32 [ %60, %57 ], [ 0, %61 ]
  ret i32 %63
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
