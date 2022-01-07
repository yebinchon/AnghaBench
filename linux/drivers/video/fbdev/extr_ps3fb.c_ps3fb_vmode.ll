; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ps3fb.c_ps3fb_vmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ps3fb.c_ps3fb_vmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }

@PS3AV_MODE_MASK = common dso_local global i32 0, align 4
@PS3AV_MODE_480I = common dso_local global i32 0, align 4
@PS3AV_MODE_WUXGA = common dso_local global i32 0, align 4
@PS3AV_MODE_1080P50 = common dso_local global i32 0, align 4
@PS3AV_MODE_FULL = common dso_local global i32 0, align 4
@ps3fb_modedb = common dso_local global %struct.fb_videomode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_videomode* (i32)* @ps3fb_vmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_videomode* @ps3fb_vmode(i32 %0) #0 {
  %2 = alloca %struct.fb_videomode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PS3AV_MODE_MASK, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @PS3AV_MODE_480I, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PS3AV_MODE_WUXGA, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  store %struct.fb_videomode* null, %struct.fb_videomode** %2, align 8
  br label %34

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PS3AV_MODE_1080P50, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PS3AV_MODE_FULL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.fb_videomode*, %struct.fb_videomode** @ps3fb_modedb, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %26, i64 %29
  store %struct.fb_videomode* %30, %struct.fb_videomode** %2, align 8
  br label %34

31:                                               ; preds = %20, %16
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.fb_videomode* @ps3fb_native_vmode(i32 %32)
  store %struct.fb_videomode* %33, %struct.fb_videomode** %2, align 8
  br label %34

34:                                               ; preds = %31, %25, %15
  %35 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  ret %struct.fb_videomode* %35
}

declare dso_local %struct.fb_videomode* @ps3fb_native_vmode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
