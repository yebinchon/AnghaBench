; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_dz_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_dz_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.dz_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@DZ_MODEM = common dso_local global i64 0, align 8
@DZ_MSR = common dso_local global i32 0, align 4
@DZ_MODEM_DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @dz_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dz_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.dz_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.dz_port* @to_dport(%struct.uart_port* %5)
  store %struct.dz_port* %6, %struct.dz_port** %3, align 8
  %7 = load i32, i32* @TIOCM_CAR, align 4
  %8 = load i32, i32* @TIOCM_DSR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @TIOCM_CTS, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %13 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DZ_MODEM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %20 = load i32, i32* @DZ_MSR, align 4
  %21 = call i32 @dz_in(%struct.dz_port* %19, i32 %20)
  %22 = load i32, i32* @DZ_MODEM_DSR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @TIOCM_DSR, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %18
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.dz_port* @to_dport(%struct.uart_port*) #1

declare dso_local i32 @dz_in(%struct.dz_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
