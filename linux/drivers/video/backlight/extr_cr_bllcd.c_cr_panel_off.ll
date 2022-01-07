; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_cr_bllcd.c_cr_panel_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_cr_bllcd.c_cr_panel_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gpio_bar = common dso_local global i32 0, align 4
@CRVML_PANEL_PORT = common dso_local global i32 0, align 4
@CRVML_LVDS_ON = common dso_local global i32 0, align 4
@CRVML_PANEL_ON = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cr_panel_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cr_panel_off() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @gpio_bar, align 4
  %4 = load i32, i32* @CRVML_PANEL_PORT, align 4
  %5 = add nsw i32 %3, %4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @inl(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @CRVML_LVDS_ON, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %0
  %13 = load i32, i32* @CRVML_LVDS_ON, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @outl(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %12, %0
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @CRVML_PANEL_ON, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %26, 10
  %28 = call i32 @schedule_timeout(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @CRVML_PANEL_ON, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @outl(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
