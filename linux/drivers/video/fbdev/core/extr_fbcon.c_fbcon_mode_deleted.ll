; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_mode_deleted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_mode_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fbcon_display = type { i32 }
%struct.fb_videomode = type { i32 }

@first_fb_vc = common dso_local global i32 0, align 4
@last_fb_vc = common dso_local global i32 0, align 4
@con2fb_map = common dso_local global i32* null, align 8
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@fb_display = common dso_local global %struct.fbcon_display* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbcon_mode_deleted(%struct.fb_info* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fbcon_display*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @first_fb_vc, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %56, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @last_fb_vc, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load i32*, i32** @con2fb_map, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %56

24:                                               ; preds = %15
  %25 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %25, i64 %27
  %29 = load %struct.fb_info*, %struct.fb_info** %28, align 8
  store %struct.fb_info* %29, %struct.fb_info** %5, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = icmp ne %struct.fb_info* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %56

34:                                               ; preds = %24
  %35 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %35, i64 %37
  store %struct.fbcon_display* %38, %struct.fbcon_display** %6, align 8
  %39 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %40 = icmp ne %struct.fbcon_display* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %43 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %34
  br label %56

47:                                               ; preds = %41
  %48 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %49 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %52 = call i64 @fb_mode_is_equal(i32 %50, %struct.fb_videomode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %59

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %46, %33, %23
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %11

59:                                               ; preds = %54, %11
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i64 @fb_mode_is_equal(i32, %struct.fb_videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
