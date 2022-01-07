; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_display.c_sw_panel_power_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_display.c_sw_panel_power_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PANEL_DISPLAY_CTRL = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL_FPEN = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL_DATA = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL_VBIASEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @sw_panel_power_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_panel_power_sequence(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %7 = call i32 @peek32(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @PANEL_DISPLAY_CTRL_FPEN, align 4
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @poke32(i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @primary_wait_vertical_sync(i32 %20)
  %22 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %23 = call i32 @peek32(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i32, i32* @PANEL_DISPLAY_CTRL_DATA, align 4
  br label %29

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @poke32(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @primary_wait_vertical_sync(i32 %36)
  %38 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %39 = call i32 @peek32(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @PANEL_DISPLAY_CTRL_VBIASEN, align 4
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @poke32(i32 %49, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @primary_wait_vertical_sync(i32 %52)
  %54 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %55 = call i32 @peek32(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @PANEL_DISPLAY_CTRL_FPEN, align 4
  br label %61

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @poke32(i32 %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @primary_wait_vertical_sync(i32 %68)
  ret void
}

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @poke32(i32, i32) #1

declare dso_local i32 @primary_wait_vertical_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
