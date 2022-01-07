; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_wait_for_vsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_wait_for_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_fb = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@VSYNC_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c_fb*, i64)* @s3c_fb_wait_for_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_fb_wait_for_vsync(%struct.s3c_fb* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c_fb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.s3c_fb* %0, %struct.s3c_fb** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.s3c_fb*, %struct.s3c_fb** %4, align 8
  %15 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  %18 = load %struct.s3c_fb*, %struct.s3c_fb** %4, align 8
  %19 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.s3c_fb*, %struct.s3c_fb** %4, align 8
  %23 = call i32 @s3c_fb_enable_irq(%struct.s3c_fb* %22)
  %24 = load %struct.s3c_fb*, %struct.s3c_fb** %4, align 8
  %25 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.s3c_fb*, %struct.s3c_fb** %4, align 8
  %30 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* @VSYNC_TIMEOUT_MSEC, align 4
  %36 = call i32 @msecs_to_jiffies(i32 %35)
  %37 = call i32 @wait_event_interruptible_timeout(i32 %27, i32 %34, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.s3c_fb*, %struct.s3c_fb** %4, align 8
  %39 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pm_runtime_put_sync(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %13
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @s3c_fb_enable_irq(%struct.s3c_fb*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
