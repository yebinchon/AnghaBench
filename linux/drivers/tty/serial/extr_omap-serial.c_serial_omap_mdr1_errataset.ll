; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_mdr1_errataset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_mdr1_errataset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_omap_port = type { i32, i32 }

@UART_OMAP_MDR1 = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Errata i202: timedout %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_omap_port*, i32)* @serial_omap_mdr1_errataset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_mdr1_errataset(%struct.uart_omap_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_omap_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_omap_port* %0, %struct.uart_omap_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 255, i32* %5, align 4
  %6 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %7 = load i32, i32* @UART_OMAP_MDR1, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @serial_out(%struct.uart_omap_port* %6, i32 %7, i32 %8)
  %10 = call i32 @udelay(i32 2)
  %11 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %12 = load i32, i32* @UART_FCR, align 4
  %13 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @serial_out(%struct.uart_omap_port* %11, i32 %12, i32 %19)
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i32, i32* @UART_LSR_THRE, align 4
  %23 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %24 = load i32, i32* @UART_LSR, align 4
  %25 = call i32 @serial_in(%struct.uart_omap_port* %23, i32 %24)
  %26 = load i32, i32* @UART_LSR_THRE, align 4
  %27 = load i32, i32* @UART_LSR_DR, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %22, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %38 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %41 = load i32, i32* @UART_LSR, align 4
  %42 = call i32 @serial_in(%struct.uart_omap_port* %40, i32 %41)
  %43 = call i32 @dev_crit(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %46

44:                                               ; preds = %31
  %45 = call i32 @udelay(i32 1)
  br label %21

46:                                               ; preds = %36, %21
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_omap_port*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @serial_in(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @dev_crit(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
