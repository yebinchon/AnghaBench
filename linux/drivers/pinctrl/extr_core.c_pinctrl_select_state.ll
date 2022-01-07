; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_select_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_select_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl = type { %struct.pinctrl_state* }
%struct.pinctrl_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinctrl_select_state(%struct.pinctrl* %0, %struct.pinctrl_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl*, align 8
  %5 = alloca %struct.pinctrl_state*, align 8
  store %struct.pinctrl* %0, %struct.pinctrl** %4, align 8
  store %struct.pinctrl_state* %1, %struct.pinctrl_state** %5, align 8
  %6 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %7 = getelementptr inbounds %struct.pinctrl, %struct.pinctrl* %6, i32 0, i32 0
  %8 = load %struct.pinctrl_state*, %struct.pinctrl_state** %7, align 8
  %9 = load %struct.pinctrl_state*, %struct.pinctrl_state** %5, align 8
  %10 = icmp eq %struct.pinctrl_state* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %14 = load %struct.pinctrl_state*, %struct.pinctrl_state** %5, align 8
  %15 = call i32 @pinctrl_commit_state(%struct.pinctrl* %13, %struct.pinctrl_state* %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @pinctrl_commit_state(%struct.pinctrl*, %struct.pinctrl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
