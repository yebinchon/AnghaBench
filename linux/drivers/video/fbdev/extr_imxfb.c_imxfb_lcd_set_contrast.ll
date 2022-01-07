; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_lcd_set_contrast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_lcd_set_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.imxfb_info = type { i32, i64, i64 }

@LCDC_PWMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32)* @imxfb_lcd_set_contrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxfb_lcd_set_contrast(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imxfb_info*, align 8
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %7 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %6, i32 0, i32 0
  %8 = call %struct.imxfb_info* @dev_get_drvdata(i32* %7)
  store %struct.imxfb_info* %8, %struct.imxfb_info** %5, align 8
  %9 = load %struct.imxfb_info*, %struct.imxfb_info** %5, align 8
  %10 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %2
  %14 = load %struct.imxfb_info*, %struct.imxfb_info** %5, align 8
  %15 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 255
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 255, i32* %4, align 4
  br label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %22
  br label %27

27:                                               ; preds = %26, %21
  %28 = load %struct.imxfb_info*, %struct.imxfb_info** %5, align 8
  %29 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, -256
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.imxfb_info*, %struct.imxfb_info** %5, align 8
  %34 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.imxfb_info*, %struct.imxfb_info** %5, align 8
  %38 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.imxfb_info*, %struct.imxfb_info** %5, align 8
  %41 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LCDC_PWMR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  br label %46

46:                                               ; preds = %27, %13, %2
  ret i32 0
}

declare dso_local %struct.imxfb_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
