; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }
%struct.sci_port = type { i32, i32, i32, i32, i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PORT_SCIFA = common dso_local global i64 0, align 8
@PORT_SCIFB = common dso_local global i64 0, align 8
@SCIF_DR = common dso_local global i32 0, align 4
@SCSCR = common dso_local global i32 0, align 4
@SCSCR_RDRQE = common dso_local global i32 0, align 4
@SCSCR_RIE = common dso_local global i32 0, align 4
@SCxSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sci_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_rx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.sci_port*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.uart_port*
  store %struct.uart_port* %8, %struct.uart_port** %5, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %10 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %9)
  store %struct.sci_port* %10, %struct.sci_port** %6, align 8
  %11 = load %struct.sci_port*, %struct.sci_port** %6, align 8
  %12 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %46

15:                                               ; preds = %2
  %16 = load %struct.sci_port*, %struct.sci_port** %6, align 8
  %17 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %22 = call i32 @scif_rtrg_enabled(%struct.uart_port* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %26 = load %struct.sci_port*, %struct.sci_port** %6, align 8
  %27 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @scif_set_rtrg(%struct.uart_port* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %20
  %31 = load %struct.sci_port*, %struct.sci_port** %6, align 8
  %32 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %31, i32 0, i32 3
  %33 = load i64, i64* @jiffies, align 8
  %34 = load %struct.sci_port*, %struct.sci_port** %6, align 8
  %35 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load %struct.sci_port*, %struct.sci_port** %6, align 8
  %40 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = call i64 @DIV_ROUND_UP(i32 %42, i32 1000000)
  %44 = add nsw i64 %33, %43
  %45 = call i32 @mod_timer(i32* %32, i64 %44)
  br label %46

46:                                               ; preds = %30, %15, %2
  %47 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %48 = call i32 @sci_receive_chars(%struct.uart_port* %47)
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %49
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local i32 @scif_rtrg_enabled(%struct.uart_port*) #1

declare dso_local i32 @scif_set_rtrg(%struct.uart_port*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @sci_receive_chars(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
