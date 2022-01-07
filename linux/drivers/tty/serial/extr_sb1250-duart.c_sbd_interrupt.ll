; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbd_port = type { %struct.uart_port }
%struct.uart_port = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@M_DUART_ISR_ALL = common dso_local global i32 0, align 4
@M_DUART_ISR_RX = common dso_local global i32 0, align 4
@M_DUART_ISR_IN = common dso_local global i32 0, align 4
@M_DUART_ISR_TX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sbd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbd_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sbd_port*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sbd_port*
  store %struct.sbd_port* %11, %struct.sbd_port** %5, align 8
  %12 = load %struct.sbd_port*, %struct.sbd_port** %5, align 8
  %13 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %12, i32 0, i32 0
  store %struct.uart_port* %13, %struct.uart_port** %6, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %7, align 4
  store i32 16, i32* %9, align 4
  br label %15

15:                                               ; preds = %67, %2
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = load %struct.sbd_port*, %struct.sbd_port** %5, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %22, 2
  %24 = call i32 @R_DUART_ISRREG(i32 %23)
  %25 = call i32 @read_sbdshr(%struct.sbd_port* %19, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.sbd_port*, %struct.sbd_port** %5, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %29, 2
  %31 = call i32 @R_DUART_IMRREG(i32 %30)
  %32 = call i32 @read_sbdshr(%struct.sbd_port* %26, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @M_DUART_ISR_ALL, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %18
  br label %70

41:                                               ; preds = %18
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @M_DUART_ISR_RX, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.sbd_port*, %struct.sbd_port** %5, align 8
  %48 = call i32 @sbd_receive_chars(%struct.sbd_port* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @M_DUART_ISR_IN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.sbd_port*, %struct.sbd_port** %5, align 8
  %56 = call i32 @sbd_status_handle(%struct.sbd_port* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @M_DUART_ISR_TX, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.sbd_port*, %struct.sbd_port** %5, align 8
  %64 = call i32 @sbd_transmit_chars(%struct.sbd_port* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %9, align 4
  br label %15

70:                                               ; preds = %40, %15
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @read_sbdshr(%struct.sbd_port*, i32) #1

declare dso_local i32 @R_DUART_ISRREG(i32) #1

declare dso_local i32 @R_DUART_IMRREG(i32) #1

declare dso_local i32 @sbd_receive_chars(%struct.sbd_port*) #1

declare dso_local i32 @sbd_status_handle(%struct.sbd_port*) #1

declare dso_local i32 @sbd_transmit_chars(%struct.sbd_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
