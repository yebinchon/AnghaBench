; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_viamode.c_get_best_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_viamode.c_get_best_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_videomode* (%struct.fb_videomode*, i32, i32, i32, i32)* @get_best_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_videomode* @get_best_mode(%struct.fb_videomode* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fb_videomode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_videomode*, align 8
  %12 = alloca i32, align 4
  store %struct.fb_videomode* %0, %struct.fb_videomode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.fb_videomode* null, %struct.fb_videomode** %11, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %64, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %13
  %18 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %18, i64 %20
  %22 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %27, i64 %29
  %31 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26, %17
  br label %64

36:                                               ; preds = %26
  %37 = load %struct.fb_videomode*, %struct.fb_videomode** %11, align 8
  %38 = icmp ne %struct.fb_videomode* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %40, i64 %42
  %44 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %45, %47
  %49 = call i64 @abs(i64 %48)
  %50 = load %struct.fb_videomode*, %struct.fb_videomode** %11, align 8
  %51 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %52, %54
  %56 = call i64 @abs(i64 %55)
  %57 = icmp slt i64 %49, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %39, %36
  %59 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %59, i64 %61
  store %struct.fb_videomode* %62, %struct.fb_videomode** %11, align 8
  br label %63

63:                                               ; preds = %58, %39
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %13

67:                                               ; preds = %13
  %68 = load %struct.fb_videomode*, %struct.fb_videomode** %11, align 8
  ret %struct.fb_videomode* %68
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
