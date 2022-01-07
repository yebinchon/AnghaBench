; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_is_valid_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_is_valid_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32, i32, i32 }
%struct.fb_info = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%dx%d too many pixels\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%dx%d %dps pixel clock too fast\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%dx%d (pixclk %dps %dMHz) valid mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_videomode*, %struct.fb_info*)* @ufx_is_valid_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufx_is_valid_mode(%struct.fb_videomode* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca %struct.fb_info*, align 8
  store %struct.fb_videomode* %0, %struct.fb_videomode** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %6 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %7 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %10 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  %13 = icmp sgt i32 %12, 2359296
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %16 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %19 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  store i32 0, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %24 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 5000
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %29 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %32 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %35 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33, i32 %36)
  store i32 0, i32* %3, align 4
  br label %53

38:                                               ; preds = %22
  %39 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %40 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %43 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %46 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %49 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 1000000, %50
  %52 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44, i32 %47, i32 %51)
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %38, %27, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
