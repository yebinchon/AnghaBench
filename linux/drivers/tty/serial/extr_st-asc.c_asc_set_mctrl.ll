; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.asc_port = type { i32 }

@ASC_CTL = common dso_local global i32 0, align 4
@ASC_CTL_CTSENABLE = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @asc_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asc_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asc_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.asc_port* @to_asc_port(%struct.uart_port* %6)
  store %struct.asc_port* %7, %struct.asc_port** %5, align 8
  %8 = load %struct.asc_port*, %struct.asc_port** %5, align 8
  %9 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = load i32, i32* @ASC_CTL, align 4
  %16 = call i32 @asc_in(%struct.uart_port* %14, i32 %15)
  %17 = load i32, i32* @ASC_CTL_CTSENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %29

21:                                               ; preds = %13
  %22 = load %struct.asc_port*, %struct.asc_port** %5, align 8
  %23 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TIOCM_RTS, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @gpiod_set_value(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %20, %12
  ret void
}

declare dso_local %struct.asc_port* @to_asc_port(%struct.uart_port*) #1

declare dso_local i32 @asc_in(%struct.uart_port*, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
