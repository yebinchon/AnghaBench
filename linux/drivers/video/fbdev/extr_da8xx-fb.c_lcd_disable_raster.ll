; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_disable_raster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_disable_raster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@LCD_RASTER_ENABLE = common dso_local global i32 0, align 4
@DA8XX_FRAME_WAIT = common dso_local global i32 0, align 4
@lcd_revision = common dso_local global i64 0, align 8
@LCD_VERSION_2 = common dso_local global i64 0, align 8
@frame_done_flag = common dso_local global i64 0, align 8
@frame_done_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"LCD Controller timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @lcd_disable_raster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_disable_raster(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %6 = call i32 @lcdc_read(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @LCD_RASTER_ENABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @LCD_RASTER_ENABLE, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %17 = call i32 @lcdc_write(i32 %15, i32 %16)
  br label %19

18:                                               ; preds = %1
  br label %39

19:                                               ; preds = %11
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @DA8XX_FRAME_WAIT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i64, i64* @lcd_revision, align 8
  %25 = load i64, i64* @LCD_VERSION_2, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  store i64 0, i64* @frame_done_flag, align 8
  %28 = load i32, i32* @frame_done_wq, align 4
  %29 = load i64, i64* @frame_done_flag, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @msecs_to_jiffies(i32 50)
  %33 = call i32 @wait_event_interruptible_timeout(i32 %28, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  br label %39

39:                                               ; preds = %18, %38, %23, %19
  ret void
}

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
