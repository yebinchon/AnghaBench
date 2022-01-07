; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c___fwtty_port_line_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c___fwtty_port_line_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, i64 }

@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@OOB_RX_THROTTLE = common dso_local global i32 0, align 4
@OOB_TX_THROTTLE = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwtty_port*)* @__fwtty_port_line_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fwtty_port_line_status(%struct.fwtty_port* %0) #0 {
  %2 = alloca %struct.fwtty_port*, align 8
  %3 = alloca i32, align 4
  store %struct.fwtty_port* %0, %struct.fwtty_port** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %5 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @TIOCM_DTR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @TIOCM_DSR, align 4
  %12 = load i32, i32* @TIOCM_CAR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %18 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TIOCM_RTS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @TIOCM_CTS, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %29 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @OOB_RX_THROTTLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @OOB_TX_THROTTLE, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %40 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @UART_LSR_BI, align 4
  %45 = shl i32 %44, 24
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
