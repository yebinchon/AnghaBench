; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_ipwireless_set_RTS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_ipwireless_set_RTS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32 }

@PRIO_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipwireless_set_RTS(%struct.ipw_hardware* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipw_hardware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %8 = load i32, i32* @PRIO_CTRL, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @set_RTS(%struct.ipw_hardware* %7, i32 %8, i32 %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @set_RTS(%struct.ipw_hardware*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
