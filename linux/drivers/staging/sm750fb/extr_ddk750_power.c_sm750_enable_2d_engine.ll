; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_power.c_sm750_enable_2d_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_power.c_sm750_enable_2d_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURRENT_GATE = common dso_local global i32 0, align 4
@CURRENT_GATE_DE = common dso_local global i32 0, align 4
@CURRENT_GATE_CSC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sm750_enable_2d_engine(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @CURRENT_GATE, align 4
  %5 = call i32 @peek32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @CURRENT_GATE_DE, align 4
  %10 = load i32, i32* @CURRENT_GATE_CSC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %21

14:                                               ; preds = %1
  %15 = load i32, i32* @CURRENT_GATE_DE, align 4
  %16 = load i32, i32* @CURRENT_GATE_CSC, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %14, %8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @sm750_set_current_gate(i32 %22)
  ret void
}

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @sm750_set_current_gate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
