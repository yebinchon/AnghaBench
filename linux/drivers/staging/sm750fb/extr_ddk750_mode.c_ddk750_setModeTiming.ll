; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_mode.c_ddk750_setModeTiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_mode.c_ddk750_setModeTiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_parameter = type { i32 }
%struct.pll_value = type { i32, i32 }

@DEFAULT_INPUT_CLOCK = common dso_local global i32 0, align 4
@SM750LE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddk750_setModeTiming(%struct.mode_parameter* %0, i32 %1) #0 {
  %3 = alloca %struct.mode_parameter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pll_value, align 4
  %6 = alloca i32, align 4
  store %struct.mode_parameter* %0, %struct.mode_parameter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @DEFAULT_INPUT_CLOCK, align 4
  %8 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %5, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %12 = getelementptr inbounds %struct.mode_parameter, %struct.mode_parameter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sm750_calc_pll_value(i32 %13, %struct.pll_value* %5)
  store i32 %14, i32* %6, align 4
  %15 = call i64 (...) @sm750_get_chip_type()
  %16 = load i64, i64* @SM750LE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @outb_p(i32 136, i32 980)
  %20 = call i32 @outb_p(i32 6, i32 981)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.mode_parameter*, %struct.mode_parameter** %3, align 8
  %23 = call i32 @programModeRegisters(%struct.mode_parameter* %22, %struct.pll_value* %5)
  ret i32 0
}

declare dso_local i32 @sm750_calc_pll_value(i32, %struct.pll_value*) #1

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @programModeRegisters(%struct.mode_parameter*, %struct.pll_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
