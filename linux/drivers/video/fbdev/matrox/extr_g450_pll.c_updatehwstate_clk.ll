; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_g450_pll.c_updatehwstate_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_g450_pll.c_updatehwstate_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_hw_state = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_hw_state*, i32, i32)* @updatehwstate_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updatehwstate_clk(%struct.matrox_hw_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.matrox_hw_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.matrox_hw_state* %0, %struct.matrox_hw_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %26 [
    i32 128, label %8
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %5, align 4
  %10 = lshr i32 %9, 16
  %11 = load %struct.matrox_hw_state*, %struct.matrox_hw_state** %4, align 8
  %12 = getelementptr inbounds %struct.matrox_hw_state, %struct.matrox_hw_state* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = lshr i32 %15, 8
  %17 = load %struct.matrox_hw_state*, %struct.matrox_hw_state** %4, align 8
  %18 = getelementptr inbounds %struct.matrox_hw_state, %struct.matrox_hw_state* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.matrox_hw_state*, %struct.matrox_hw_state** %4, align 8
  %23 = getelementptr inbounds %struct.matrox_hw_state, %struct.matrox_hw_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  store i32 %21, i32* %25, align 4
  br label %26

26:                                               ; preds = %3, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
