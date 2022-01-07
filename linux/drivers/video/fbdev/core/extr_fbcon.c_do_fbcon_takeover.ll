; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_do_fbcon_takeover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_do_fbcon_takeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_registered_fb = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FBCON_LOGO_DONTSHOW = common dso_local global i32 0, align 4
@logo_shown = common dso_local global i32 0, align 4
@first_fb_vc = common dso_local global i32 0, align 4
@last_fb_vc = common dso_local global i32 0, align 4
@info_idx = common dso_local global i32 0, align 4
@con2fb_map = common dso_local global i32* null, align 8
@fb_con = common dso_local global i32 0, align 4
@fbcon_is_default = common dso_local global i32 0, align 4
@fbcon_has_console_bind = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_fbcon_takeover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_fbcon_takeover(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @num_registered_fb, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %56

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @FBCON_LOGO_DONTSHOW, align 4
  store i32 %15, i32* @logo_shown, align 4
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, i32* @first_fb_vc, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %28, %16
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @last_fb_vc, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32, i32* @info_idx, align 4
  %24 = load i32*, i32** @con2fb_map, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %18

31:                                               ; preds = %18
  %32 = load i32, i32* @first_fb_vc, align 4
  %33 = load i32, i32* @last_fb_vc, align 4
  %34 = load i32, i32* @fbcon_is_default, align 4
  %35 = call i32 @do_take_over_console(i32* @fb_con, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load i32, i32* @first_fb_vc, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %49, %38
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @last_fb_vc, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32*, i32** @con2fb_map, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 -1, i32* %48, align 4
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %40

52:                                               ; preds = %40
  store i32 -1, i32* @info_idx, align 4
  br label %54

53:                                               ; preds = %31
  store i32 1, i32* @fbcon_has_console_bind, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %8
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @do_take_over_console(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
