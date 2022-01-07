; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_display.c_primary_wait_vertical_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_display.c_primary_wait_vertical_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PANEL_PLL_CTRL = common dso_local global i32 0, align 4
@PLL_CTRL_POWER = common dso_local global i32 0, align 4
@PANEL_DISPLAY_CTRL = common dso_local global i32 0, align 4
@DISPLAY_CTRL_TIMING = common dso_local global i32 0, align 4
@SYSTEM_CTRL = common dso_local global i32 0, align 4
@SYSTEM_CTRL_PANEL_VSYNC_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @primary_wait_vertical_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @primary_wait_vertical_sync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @PANEL_PLL_CTRL, align 4
  %5 = call i32 @peek32(i32 %4)
  %6 = load i32, i32* @PLL_CTRL_POWER, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @PANEL_DISPLAY_CTRL, align 4
  %11 = call i32 @peek32(i32 %10)
  %12 = load i32, i32* @DISPLAY_CTRL_TIMING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %1
  br label %41

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %40, %16
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %2, align 4
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %25, %21
  %23 = load i32, i32* @SYSTEM_CTRL, align 4
  %24 = call i32 @peek32(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SYSTEM_CTRL_PANEL_VSYNC_ACTIVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %22, label %30

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %34, %30
  %32 = load i32, i32* @SYSTEM_CTRL, align 4
  %33 = call i32 @peek32(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SYSTEM_CTRL_PANEL_VSYNC_ACTIVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %31, label %40

40:                                               ; preds = %34
  br label %17

41:                                               ; preds = %15, %17
  ret void
}

declare dso_local i32 @peek32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
