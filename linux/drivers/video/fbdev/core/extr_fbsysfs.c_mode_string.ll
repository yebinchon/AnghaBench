; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbsysfs.c_mode_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbsysfs.c_mode_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32, i32, i32, i32, i32 }

@FB_MODE_IS_DETAILED = common dso_local global i32 0, align 4
@FB_MODE_IS_VESA = common dso_local global i32 0, align 4
@FB_MODE_IS_STANDARD = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%c:%dx%d%c-%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.fb_videomode*)* @mode_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_string(i8* %0, i32 %1, %struct.fb_videomode* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_videomode*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fb_videomode* %2, %struct.fb_videomode** %6, align 8
  store i8 85, i8* %7, align 1
  store i8 112, i8* %8, align 1
  %9 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %10 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FB_MODE_IS_DETAILED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8 68, i8* %7, align 1
  br label %16

16:                                               ; preds = %15, %3
  %17 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %18 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FB_MODE_IS_VESA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i8 86, i8* %7, align 1
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %26 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FB_MODE_IS_STANDARD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i8 83, i8* %7, align 1
  br label %32

32:                                               ; preds = %31, %24
  %33 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %34 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i8 105, i8* %8, align 1
  br label %40

40:                                               ; preds = %39, %32
  %41 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %42 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i8 100, i8* %8, align 1
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = sub nsw i64 %53, %55
  %57 = load i8, i8* %7, align 1
  %58 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %59 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %62 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i8, i8* %8, align 1
  %65 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %66 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @snprintf(i8* %52, i64 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8 signext %57, i32 %60, i32 %63, i8 signext %64, i32 %67)
  ret i32 %68
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8 signext, i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
