; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_display.c_set_display_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_display.c_set_display_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PANEL_DISPLAY_CTRL = common dso_local global i64 0, align 8
@PANEL_DISPLAY_CTRL_RESERVED_MASK = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL_RESERVED_MASK = common dso_local global i64 0, align 8
@DISPLAY_CTRL_TIMING = common dso_local global i64 0, align 8
@DISPLAY_CTRL_PLANE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Set Plane enbit:after tried %d times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_display_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_display_control(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @PANEL_DISPLAY_CTRL, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @PANEL_DISPLAY_CTRL_RESERVED_MASK, align 8
  store i64 %13, i64* %7, align 8
  br label %17

14:                                               ; preds = %2
  %15 = load i64, i64* @CRT_DISPLAY_CTRL, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* @CRT_DISPLAY_CTRL_RESERVED_MASK, align 8
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @peek32(i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %17
  %23 = load i64, i64* @DISPLAY_CTRL_TIMING, align 8
  %24 = load i64, i64* %6, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @poke32(i64 %26, i64 %27)
  %29 = load i64, i64* @DISPLAY_CTRL_PLANE, align 8
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %38, %22
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @poke32(i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @peek32(i64 %39)
  %41 = load i64, i64* %7, align 8
  %42 = xor i64 %41, -1
  %43 = and i64 %40, %42
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = xor i64 %45, -1
  %47 = and i64 %44, %46
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %32, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %67

52:                                               ; preds = %17
  %53 = load i64, i64* @DISPLAY_CTRL_PLANE, align 8
  %54 = xor i64 %53, -1
  %55 = load i64, i64* %6, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @poke32(i64 %57, i64 %58)
  %60 = load i64, i64* @DISPLAY_CTRL_TIMING, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %6, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @poke32(i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %52, %49
  ret void
}

declare dso_local i64 @peek32(i64) #1

declare dso_local i32 @poke32(i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
