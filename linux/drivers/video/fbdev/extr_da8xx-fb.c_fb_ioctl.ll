; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_fb_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_fb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.lcd_sync_arg = type { i32, i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32, i64)* @fb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_ioctl(%struct.fb_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.lcd_sync_arg, align 4
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %48 [
    i32 134, label %10
    i32 133, label %10
    i32 136, label %10
    i32 131, label %10
    i32 135, label %10
    i32 130, label %10
    i32 129, label %13
    i32 128, label %29
    i32 132, label %45
  ]

10:                                               ; preds = %3, %3, %3, %3, %3, %3
  %11 = load i32, i32* @ENOTTY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %52

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @copy_from_user(%struct.lcd_sync_arg* %8, i8* %15, i32 12)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.lcd_sync_arg, %struct.lcd_sync_arg* %8, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.lcd_sync_arg, %struct.lcd_sync_arg* %8, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.lcd_sync_arg, %struct.lcd_sync_arg* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @lcd_cfg_horizontal_sync(i32 %23, i32 %25, i32 %27)
  br label %51

29:                                               ; preds = %3
  %30 = load i64, i64* %7, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @copy_from_user(%struct.lcd_sync_arg* %8, i8* %31, i32 12)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EFAULT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.lcd_sync_arg, %struct.lcd_sync_arg* %8, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.lcd_sync_arg, %struct.lcd_sync_arg* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.lcd_sync_arg, %struct.lcd_sync_arg* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lcd_cfg_vertical_sync(i32 %39, i32 %41, i32 %43)
  br label %51

45:                                               ; preds = %3
  %46 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %47 = call i32 @fb_wait_for_vsync(%struct.fb_info* %46)
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %3
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %37, %21
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %48, %45, %34, %18, %10
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @copy_from_user(%struct.lcd_sync_arg*, i8*, i32) #1

declare dso_local i32 @lcd_cfg_horizontal_sync(i32, i32, i32) #1

declare dso_local i32 @lcd_cfg_vertical_sync(i32, i32, i32) #1

declare dso_local i32 @fb_wait_for_vsync(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
