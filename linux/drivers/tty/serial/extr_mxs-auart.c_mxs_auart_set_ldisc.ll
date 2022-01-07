; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_set_ldisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_set_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i64 }

@N_PPS = common dso_local global i64 0, align 8
@UPF_HARDPPS_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*)* @mxs_auart_set_ldisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_auart_set_ldisc(%struct.uart_port* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.ktermios*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %5 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %6 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @N_PPS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @UPF_HARDPPS_CD, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = call i32 @mxs_auart_enable_ms(%struct.uart_port* %16)
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @UPF_HARDPPS_CD, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @mxs_auart_enable_ms(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
