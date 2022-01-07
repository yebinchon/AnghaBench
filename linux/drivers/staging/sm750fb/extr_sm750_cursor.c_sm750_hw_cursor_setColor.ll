; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_cursor.c_sm750_hw_cursor_setColor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_cursor.c_sm750_hw_cursor_setColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lynx_cursor = type { i32 }

@HWC_COLOR_12_2_RGB565_SHIFT = common dso_local global i32 0, align 4
@HWC_COLOR_12_2_RGB565_MASK = common dso_local global i32 0, align 4
@HWC_COLOR_12 = common dso_local global i32 0, align 4
@HWC_COLOR_12_1_RGB565_MASK = common dso_local global i32 0, align 4
@HWC_COLOR_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sm750_hw_cursor_setColor(%struct.lynx_cursor* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lynx_cursor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lynx_cursor* %0, %struct.lynx_cursor** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @HWC_COLOR_12_2_RGB565_SHIFT, align 4
  %10 = shl i32 %8, %9
  %11 = load i32, i32* @HWC_COLOR_12_2_RGB565_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @HWC_COLOR_12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @HWC_COLOR_12_1_RGB565_MASK, align 4
  %17 = and i32 %15, %16
  %18 = or i32 %14, %17
  %19 = call i32 @poke32(i32 %13, i32 %18)
  %20 = load i32, i32* @HWC_COLOR_3, align 4
  %21 = call i32 @poke32(i32 %20, i32 65504)
  ret void
}

declare dso_local i32 @poke32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
