; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pmac_port = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"pmz: stop_rx()()\0A\00", align 1
@RxINT_MASK = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"pmz: stop_rx() done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pmz_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_pmac_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %4)
  store %struct.uart_pmac_port* %5, %struct.uart_pmac_port** %3, align 8
  %6 = call i32 @pmz_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @RxINT_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @R1, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %8
  store i32 %15, i32* %13, align 4
  %16 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %17 = call i32 @pmz_maybe_update_regs(%struct.uart_pmac_port* %16)
  %18 = call i32 @pmz_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i32 @pmz_debug(i8*) #1

declare dso_local i32 @pmz_maybe_update_regs(%struct.uart_pmac_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
