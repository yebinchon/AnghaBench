; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_serial_set_mnd_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_serial_set_mnd_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.msm_port = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @msm_serial_set_mnd_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_serial_set_mnd_regs(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.msm_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %4)
  store %struct.msm_port* %5, %struct.msm_port** %3, align 8
  %6 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %7 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 19200000
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = call i32 @msm_serial_set_mnd_regs_tcxo(%struct.uart_port* %17)
  br label %28

19:                                               ; preds = %11
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 4800000
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = call i32 @msm_serial_set_mnd_regs_tcxoby4(%struct.uart_port* %25)
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %10, %27, %16
  ret void
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @msm_serial_set_mnd_regs_tcxo(%struct.uart_port*) #1

declare dso_local i32 @msm_serial_set_mnd_regs_tcxoby4(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
