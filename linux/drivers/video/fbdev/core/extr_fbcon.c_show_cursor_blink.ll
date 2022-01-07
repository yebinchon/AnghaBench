; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_show_cursor_blink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_show_cursor_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@con2fb_map = common dso_local global i32* null, align 8
@fg_console = common dso_local global i64 0, align 8
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@FBCON_FLAGS_CURSOR_TIMER = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_cursor_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cursor_blink(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca %struct.fbcon_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %10, align 4
  %11 = call i32 (...) @console_lock()
  %12 = load i32*, i32** @con2fb_map, align 8
  %13 = load i64, i64* @fg_console, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %19, i64 %21
  %23 = load %struct.fb_info*, %struct.fb_info** %22, align 8
  %24 = icmp eq %struct.fb_info* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %3
  br label %47

26:                                               ; preds = %18
  %27 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %27, i64 %29
  %31 = load %struct.fb_info*, %struct.fb_info** %30, align 8
  store %struct.fb_info* %31, %struct.fb_info** %7, align 8
  %32 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = load %struct.fbcon_ops*, %struct.fbcon_ops** %33, align 8
  store %struct.fbcon_ops* %34, %struct.fbcon_ops** %8, align 8
  %35 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %36 = icmp ne %struct.fbcon_ops* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %47

38:                                               ; preds = %26
  %39 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %40 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FBCON_FLAGS_CURSOR_TIMER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %38, %37, %25
  %48 = call i32 (...) @console_unlock()
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %51)
  ret i32 %52
}

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
