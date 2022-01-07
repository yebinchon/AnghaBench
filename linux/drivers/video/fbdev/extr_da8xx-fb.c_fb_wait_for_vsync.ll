; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_fb_wait_for_vsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_fb_wait_for_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.da8xx_fb_par* }
%struct.da8xx_fb_par = type { i64, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @fb_wait_for_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_wait_for_vsync(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.da8xx_fb_par*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  store %struct.da8xx_fb_par* %8, %struct.da8xx_fb_par** %4, align 8
  %9 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %10 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %12 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %15 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %20 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @wait_event_interruptible_timeout(i32 %13, i32 %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %30, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
