; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_parse_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_parse_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_board = type { i64, %struct.jsm_channel** }
%struct.jsm_channel = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@UART_IIR_RDI = common dso_local global i32 0, align 4
@UART_IIR_RDI_TIMEOUT = common dso_local global i32 0, align 4
@UART_IIR_THRI = common dso_local global i32 0, align 4
@CH_TX_FIFO_EMPTY = common dso_local global i32 0, align 4
@CH_TX_FIFO_LWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_board*, i64)* @cls_parse_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cls_parse_isr(%struct.jsm_board* %0, i64 %1) #0 {
  %3 = alloca %struct.jsm_board*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.jsm_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.jsm_board* %0, %struct.jsm_board** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %10 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp uge i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %16 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %15, i32 0, i32 1
  %17 = load %struct.jsm_channel**, %struct.jsm_channel*** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.jsm_channel*, %struct.jsm_channel** %17, i64 %18
  %20 = load %struct.jsm_channel*, %struct.jsm_channel** %19, align 8
  store %struct.jsm_channel* %20, %struct.jsm_channel** %5, align 8
  %21 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %22 = icmp ne %struct.jsm_channel* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %79

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %71
  %26 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %27 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @readb(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @UART_IIR_NO_INT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %79

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @UART_IIR_RDI, align 4
  %39 = load i32, i32* @UART_IIR_RDI_TIMEOUT, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %45 = call i32 @cls_copy_data_from_uart_to_queue(%struct.jsm_channel* %44)
  %46 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %47 = call i32 @jsm_check_queue_flow_control(%struct.jsm_channel* %46)
  br label %48

48:                                               ; preds = %43, %36
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @UART_IIR_THRI, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %55 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %54, i32 0, i32 2
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %59 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %62 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %66 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %65, i32 0, i32 2
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %70 = call i32 @cls_copy_data_from_queue_to_uart(%struct.jsm_channel* %69)
  br label %71

71:                                               ; preds = %53, %48
  %72 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %73 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %74 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @readb(i32* %76)
  %78 = call i32 @cls_parse_modem(%struct.jsm_channel* %72, i32 %77)
  br label %25

79:                                               ; preds = %13, %23, %35
  ret void
}

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @cls_copy_data_from_uart_to_queue(%struct.jsm_channel*) #1

declare dso_local i32 @jsm_check_queue_flow_control(%struct.jsm_channel*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cls_copy_data_from_queue_to_uart(%struct.jsm_channel*) #1

declare dso_local i32 @cls_parse_modem(%struct.jsm_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
