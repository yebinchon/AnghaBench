; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s3c_fb = type { i32, i32, i32, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32 }

@S3C_FB_MAX_WIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c_fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_fb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.s3c_fb*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.s3c_fb* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.s3c_fb* %6, %struct.s3c_fb** %3, align 8
  %7 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %8 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @S3C_FB_MAX_WIN, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %17 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %16, i32 0, i32 4
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %26 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %27 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %26, i32 0, i32 4
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @s3c_fb_release_win(%struct.s3c_fb* %25, i64 %32)
  br label %34

34:                                               ; preds = %24, %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %40 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %46 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @clk_disable_unprepare(i32 %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %51 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_disable_unprepare(i32 %52)
  %54 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %55 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pm_runtime_put_sync(i32 %56)
  %58 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %59 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pm_runtime_disable(i32 %60)
  ret i32 0
}

declare dso_local %struct.s3c_fb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @s3c_fb_release_win(%struct.s3c_fb*, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
