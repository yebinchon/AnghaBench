; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ep93xx-fb.c_ep93xxfb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ep93xx-fb.c_ep93xxfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.ep93xx_fbi* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.ep93xx_fbi = type { i32 }

@EP93XXFB_SCREEN_PAGE = common dso_local global i32 0, align 4
@EP93XXFB_SCREEN_LINES = common dso_local global i32 0, align 4
@EP93XXFB_LINE_LENGTH = common dso_local global i32 0, align 4
@EP93XXFB_VLINE_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @ep93xxfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xxfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.ep93xx_fbi*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 2
  %6 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %5, align 8
  store %struct.ep93xx_fbi* %6, %struct.ep93xx_fbi** %3, align 8
  %7 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %8 = getelementptr inbounds %struct.ep93xx_fbi, %struct.ep93xx_fbi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @PICOS2KHZ(i32 %13)
  %15 = mul nsw i32 1000, %14
  %16 = call i32 @clk_set_rate(i32 %9, i32 %15)
  %17 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %18 = call i32 @ep93xxfb_set_timing(%struct.fb_info* %17)
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %22, %26
  %28 = sdiv i32 %27, 8
  %29 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %33 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EP93XXFB_SCREEN_PAGE, align 4
  %38 = call i32 @ep93xxfb_writel(%struct.ep93xx_fbi* %32, i32 %36, i32 %37)
  %39 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* @EP93XXFB_SCREEN_LINES, align 4
  %46 = call i32 @ep93xxfb_writel(%struct.ep93xx_fbi* %39, i32 %44, i32 %45)
  %47 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %48 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %51, %55
  %57 = sdiv i32 %56, 32
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* @EP93XXFB_LINE_LENGTH, align 4
  %60 = call i32 @ep93xxfb_writel(%struct.ep93xx_fbi* %47, i32 %58, i32 %59)
  %61 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %62 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %65, 4
  %67 = load i32, i32* @EP93XXFB_VLINE_STEP, align 4
  %68 = call i32 @ep93xxfb_writel(%struct.ep93xx_fbi* %61, i32 %66, i32 %67)
  %69 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %70 = call i32 @ep93xxfb_set_video_attribs(%struct.fb_info* %69)
  ret i32 0
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @PICOS2KHZ(i32) #1

declare dso_local i32 @ep93xxfb_set_timing(%struct.fb_info*) #1

declare dso_local i32 @ep93xxfb_writel(%struct.ep93xx_fbi*, i32, i32) #1

declare dso_local i32 @ep93xxfb_set_video_attribs(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
