; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_video_cs5530.c_cs5530_set_dclk_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_video_cs5530.c_cs5530_set_dclk_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.fb_info = type { %struct.TYPE_4__, %struct.geodefb_par* }
%struct.TYPE_4__ = type { i64 }
%struct.geodefb_par = type { i64 }

@cs5530_pll_table = common dso_local global %struct.TYPE_5__* null, align 8
@CS5530_DOT_CLK_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @cs5530_set_dclk_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5530_set_dclk_frequency(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.geodefb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.geodefb_par*, %struct.geodefb_par** %9, align 8
  store %struct.geodefb_par* %10, %struct.geodefb_par** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cs5530_pll_table, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cs5530_pll_table, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %18, %22
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i64, i64* %6, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %26, %1
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %65, %29
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cs5530_pll_table, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cs5530_pll_table, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %41, %45
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load i64, i64* %7, align 8
  %51 = sub nsw i64 0, %50
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %49, %35
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %6, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cs5530_pll_table, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %56, %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %30

68:                                               ; preds = %30
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %71 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CS5530_DOT_CLK_CONFIG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, -2147483392
  %78 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %79 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CS5530_DOT_CLK_CONFIG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = call i32 @udelay(i32 500)
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, 2147483647
  %87 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %88 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CS5530_DOT_CLK_CONFIG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 2147483391
  %95 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %96 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CS5530_DOT_CLK_CONFIG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
