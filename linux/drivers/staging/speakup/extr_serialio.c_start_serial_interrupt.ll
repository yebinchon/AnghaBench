; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_start_serial_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_start_serial_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@synth = common dso_local global %struct.TYPE_3__* null, align 8
@synth_readbuf_handler = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to request Speakup serial I R Q\0A\00", align 1
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@UART_MCR = common dso_local global i64 0, align 8
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i64 0, align 8
@UART_LSR = common dso_local global i64 0, align 8
@UART_RX = common dso_local global i64 0, align 8
@UART_IIR = common dso_local global i64 0, align 8
@UART_MSR = common dso_local global i64 0, align 8
@UART_FCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @start_serial_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_serial_interrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @synth, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %59

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i64, i64* @synth_readbuf_handler, align 8
  %12 = load i32, i32* @IRQF_SHARED, align 4
  %13 = load i64, i64* @synth_readbuf_handler, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @request_irq(i32 %10, i64 %11, i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %9
  %21 = load i32, i32* @UART_MCR_DTR, align 4
  %22 = load i32, i32* @UART_MCR_RTS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @UART_MCR_OUT2, align 4
  %25 = or i32 %23, %24
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), align 8
  %27 = load i64, i64* @UART_MCR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %25, i64 %28)
  %30 = load i32, i32* @UART_IER_MSI, align 4
  %31 = load i32, i32* @UART_IER_RLSI, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UART_IER_RDI, align 4
  %34 = or i32 %32, %33
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), align 8
  %36 = load i64, i64* @UART_IER, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 %34, i64 %37)
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), align 8
  %40 = load i64, i64* @UART_LSR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @inb(i64 %41)
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), align 8
  %44 = load i64, i64* @UART_RX, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @inb(i64 %45)
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), align 8
  %48 = load i64, i64* @UART_IIR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @inb(i64 %49)
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), align 8
  %52 = load i64, i64* @UART_MSR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inb(i64 %53)
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), align 8
  %56 = load i64, i64* @UART_FCR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outb(i32 1, i64 %57)
  br label %59

59:                                               ; preds = %20, %8
  ret void
}

declare dso_local i32 @request_irq(i32, i64, i32, i8*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
