; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8500lcdfb.c_vt8500lcd_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8500lcdfb.c_vt8500lcd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.vt8500lcd_info = type { i64, i32 }

@FBIO_WAITFORVSYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32, i64)* @vt8500lcd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500lcd_ioctl(%struct.fb_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vt8500lcd_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = call %struct.vt8500lcd_info* @to_vt8500lcd_info(%struct.fb_info* %10)
  store %struct.vt8500lcd_info* %11, %struct.vt8500lcd_info** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @FBIO_WAITFORVSYNC, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %3
  %16 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %9, align 8
  %17 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 60
  %20 = call i32 @writel(i32 -9, i64 %19)
  %21 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %9, align 8
  %22 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %9, align 8
  %25 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 56
  %28 = call i32 @readl(i64 %27)
  %29 = and i32 %28, 8
  %30 = load i32, i32* @HZ, align 4
  %31 = sdiv i32 %30, 10
  %32 = call i32 @wait_event_interruptible_timeout(i32 %23, i32 %29, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %9, align 8
  %34 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 60
  %37 = call i32 @writel(i32 -1, i64 %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %15
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %51

42:                                               ; preds = %15
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %45, %40
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.vt8500lcd_info* @to_vt8500lcd_info(%struct.fb_info*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
