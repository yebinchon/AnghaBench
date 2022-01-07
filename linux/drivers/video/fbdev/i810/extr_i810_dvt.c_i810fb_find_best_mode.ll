; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_dvt.c_i810fb_find_best_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_dvt.c_i810fb_find_best_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@std_modes = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @i810fb_find_best_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810fb_find_best_mode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 3
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %11, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %57, %3
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @std_modes, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @std_modes, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %21
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @std_modes, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @std_modes, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %40, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %39, %30
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %21
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %16

60:                                               ; preds = %16
  %61 = load i32, i32* %10, align 4
  ret i32 %61
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
