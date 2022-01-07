; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_accel.c_sm750_hw_de_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_accel.c_sm750_hw_de_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lynx_accel = type { i32 }

@DE_MASKS = common dso_local global i32 0, align 4
@DE_STRETCH_FORMAT_PATTERN_XY = common dso_local global i32 0, align 4
@DE_STRETCH_FORMAT_PATTERN_Y_MASK = common dso_local global i32 0, align 4
@DE_STRETCH_FORMAT_PATTERN_X_MASK = common dso_local global i32 0, align 4
@DE_STRETCH_FORMAT_ADDRESSING_MASK = common dso_local global i32 0, align 4
@DE_STRETCH_FORMAT_SOURCE_HEIGHT_MASK = common dso_local global i32 0, align 4
@DE_STRETCH_FORMAT = common dso_local global i32 0, align 4
@DE_CLIP_TL = common dso_local global i32 0, align 4
@DE_CLIP_BR = common dso_local global i32 0, align 4
@DE_COLOR_COMPARE_MASK = common dso_local global i32 0, align 4
@DE_COLOR_COMPARE = common dso_local global i32 0, align 4
@DE_CONTROL_TRANSPARENCY = common dso_local global i32 0, align 4
@DE_CONTROL_TRANSPARENCY_MATCH = common dso_local global i32 0, align 4
@DE_CONTROL_TRANSPARENCY_SELECT = common dso_local global i32 0, align 4
@DE_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sm750_hw_de_init(%struct.lynx_accel* %0) #0 {
  %2 = alloca %struct.lynx_accel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lynx_accel* %0, %struct.lynx_accel** %2, align 8
  %5 = load %struct.lynx_accel*, %struct.lynx_accel** %2, align 8
  %6 = load i32, i32* @DE_MASKS, align 4
  %7 = call i32 @write_dpr(%struct.lynx_accel* %5, i32 %6, i32 -1)
  store i32 3, i32* %3, align 4
  %8 = load i32, i32* @DE_STRETCH_FORMAT_PATTERN_XY, align 4
  %9 = load i32, i32* @DE_STRETCH_FORMAT_PATTERN_Y_MASK, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @DE_STRETCH_FORMAT_PATTERN_X_MASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DE_STRETCH_FORMAT_ADDRESSING_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DE_STRETCH_FORMAT_SOURCE_HEIGHT_MASK, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.lynx_accel*, %struct.lynx_accel** %2, align 8
  %18 = load i32, i32* @DE_STRETCH_FORMAT, align 4
  %19 = load %struct.lynx_accel*, %struct.lynx_accel** %2, align 8
  %20 = load i32, i32* @DE_STRETCH_FORMAT, align 4
  %21 = call i32 @read_dpr(%struct.lynx_accel* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @write_dpr(%struct.lynx_accel* %17, i32 %18, i32 %26)
  %28 = load %struct.lynx_accel*, %struct.lynx_accel** %2, align 8
  %29 = load i32, i32* @DE_CLIP_TL, align 4
  %30 = call i32 @write_dpr(%struct.lynx_accel* %28, i32 %29, i32 0)
  %31 = load %struct.lynx_accel*, %struct.lynx_accel** %2, align 8
  %32 = load i32, i32* @DE_CLIP_BR, align 4
  %33 = call i32 @write_dpr(%struct.lynx_accel* %31, i32 %32, i32 0)
  %34 = load %struct.lynx_accel*, %struct.lynx_accel** %2, align 8
  %35 = load i32, i32* @DE_COLOR_COMPARE_MASK, align 4
  %36 = call i32 @write_dpr(%struct.lynx_accel* %34, i32 %35, i32 0)
  %37 = load %struct.lynx_accel*, %struct.lynx_accel** %2, align 8
  %38 = load i32, i32* @DE_COLOR_COMPARE, align 4
  %39 = call i32 @write_dpr(%struct.lynx_accel* %37, i32 %38, i32 0)
  %40 = load i32, i32* @DE_CONTROL_TRANSPARENCY, align 4
  %41 = load i32, i32* @DE_CONTROL_TRANSPARENCY_MATCH, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @DE_CONTROL_TRANSPARENCY_SELECT, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.lynx_accel*, %struct.lynx_accel** %2, align 8
  %46 = load i32, i32* @DE_CONTROL, align 4
  %47 = load %struct.lynx_accel*, %struct.lynx_accel** %2, align 8
  %48 = load i32, i32* @DE_CONTROL, align 4
  %49 = call i32 @read_dpr(%struct.lynx_accel* %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = call i32 @write_dpr(%struct.lynx_accel* %45, i32 %46, i32 %52)
  ret void
}

declare dso_local i32 @write_dpr(%struct.lynx_accel*, i32, i32) #1

declare dso_local i32 @read_dpr(%struct.lynx_accel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
