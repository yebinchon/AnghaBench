; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_find_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_find_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_fb_videomode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.imxfb_info = type { i32, %struct.imx_fb_videomode* }

@fb_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imx_fb_videomode* (%struct.imxfb_info*)* @imxfb_find_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imx_fb_videomode* @imxfb_find_mode(%struct.imxfb_info* %0) #0 {
  %2 = alloca %struct.imx_fb_videomode*, align 8
  %3 = alloca %struct.imxfb_info*, align 8
  %4 = alloca %struct.imx_fb_videomode*, align 8
  %5 = alloca i32, align 4
  store %struct.imxfb_info* %0, %struct.imxfb_info** %3, align 8
  %6 = load i32, i32* @fb_mode, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %10 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %9, i32 0, i32 1
  %11 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %10, align 8
  %12 = getelementptr inbounds %struct.imx_fb_videomode, %struct.imx_fb_videomode* %11, i64 0
  store %struct.imx_fb_videomode* %12, %struct.imx_fb_videomode** %2, align 8
  br label %41

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %14 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %15 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %14, i32 0, i32 1
  %16 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %15, align 8
  %17 = getelementptr inbounds %struct.imx_fb_videomode, %struct.imx_fb_videomode* %16, i64 0
  store %struct.imx_fb_videomode* %17, %struct.imx_fb_videomode** %4, align 8
  br label %18

18:                                               ; preds = %35, %13
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.imxfb_info*, %struct.imxfb_info** %3, align 8
  %21 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %4, align 8
  %26 = getelementptr inbounds %struct.imx_fb_videomode, %struct.imx_fb_videomode* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @fb_mode, align 4
  %30 = call i32 @strcmp(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %4, align 8
  store %struct.imx_fb_videomode* %33, %struct.imx_fb_videomode** %2, align 8
  br label %41

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %4, align 8
  %39 = getelementptr inbounds %struct.imx_fb_videomode, %struct.imx_fb_videomode* %38, i32 1
  store %struct.imx_fb_videomode* %39, %struct.imx_fb_videomode** %4, align 8
  br label %18

40:                                               ; preds = %18
  store %struct.imx_fb_videomode* null, %struct.imx_fb_videomode** %2, align 8
  br label %41

41:                                               ; preds = %40, %32, %8
  %42 = load %struct.imx_fb_videomode*, %struct.imx_fb_videomode** %2, align 8
  ret %struct.imx_fb_videomode* %42
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
