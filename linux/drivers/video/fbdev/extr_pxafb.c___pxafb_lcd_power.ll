; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c___pxafb_lcd_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c___pxafb_lcd_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxafb_info = type { i32, i64, %struct.TYPE_2__, i32 (i32, i32*)* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"pxafb: LCD power o%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to %s LCD supply regulator: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxafb_info*, i32)* @__pxafb_lcd_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pxafb_lcd_power(%struct.pxafb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pxafb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pxafb_info* %0, %struct.pxafb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %12 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %11, i32 0, i32 3
  %13 = load i32 (i32, i32*)*, i32 (i32, i32*)** %12, align 8
  %14 = icmp ne i32 (i32, i32*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %17 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %16, i32 0, i32 3
  %18 = load i32 (i32, i32*)*, i32 (i32, i32*)** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %21 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 %18(i32 %19, i32* %22)
  br label %24

24:                                               ; preds = %15, %2
  %25 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %26 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %24
  %30 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %31 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %40 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @regulator_enable(i64 %41)
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %45 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @regulator_disable(i64 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %56)
  br label %62

58:                                               ; preds = %48
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %61 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %51
  br label %63

63:                                               ; preds = %62, %29, %24
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
