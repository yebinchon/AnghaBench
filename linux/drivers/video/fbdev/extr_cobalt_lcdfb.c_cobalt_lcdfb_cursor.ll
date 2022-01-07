; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cobalt_lcdfb.c_cobalt_lcdfb_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cobalt_lcdfb.c_cobalt_lcdfb_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fb_cursor = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@LCD_XRES_MAX = common dso_local global i32 0, align 4
@LCD_YRES_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LCD_CURSOR_ON = common dso_local global i32 0, align 4
@LCD_CURSOR_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_cursor*)* @cobalt_lcdfb_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_lcdfb_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %9 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %10 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %50 [
    i32 128, label %12
  ]

12:                                               ; preds = %2
  %13 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %14 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %18 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @LCD_XRES_MAX, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @LCD_YRES_MAX, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %12
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %74

31:                                               ; preds = %24
  %32 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %33 = call i32 @lcd_busy_wait(%struct.fb_info* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %74

38:                                               ; preds = %31
  %39 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @LCD_TEXT_POS(i32 %47)
  %49 = call i32 @lcd_write_control(%struct.fb_info* %39, i32 %48)
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %74

53:                                               ; preds = %38
  %54 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %55 = call i32 @lcd_busy_wait(%struct.fb_info* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %74

60:                                               ; preds = %53
  %61 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %62 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %67 = load i32, i32* @LCD_CURSOR_ON, align 4
  %68 = call i32 @lcd_write_control(%struct.fb_info* %66, i32 %67)
  br label %73

69:                                               ; preds = %60
  %70 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %71 = load i32, i32* @LCD_CURSOR_OFF, align 4
  %72 = call i32 @lcd_write_control(%struct.fb_info* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %65
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %58, %50, %36, %28
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @lcd_busy_wait(%struct.fb_info*) #1

declare dso_local i32 @lcd_write_control(%struct.fb_info*, i32) #1

declare dso_local i32 @LCD_TEXT_POS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
