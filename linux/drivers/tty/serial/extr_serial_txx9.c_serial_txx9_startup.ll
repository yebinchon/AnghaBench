; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_txx9_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TXX9_SIFCR = common dso_local global i32 0, align 4
@TXX9_SIFCR_TFRST = common dso_local global i32 0, align 4
@TXX9_SIFCR_RFRST = common dso_local global i32 0, align 4
@TXX9_SIFCR_FRSTE = common dso_local global i32 0, align 4
@TXX9_SIDICR = common dso_local global i32 0, align 4
@TXX9_SIDISR = common dso_local global i32 0, align 4
@serial_txx9_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"serial_txx9\00", align 1
@TXX9_SIFLCR = common dso_local global i32 0, align 4
@TXX9_SIFLCR_RSDE = common dso_local global i32 0, align 4
@TXX9_SIFLCR_TSDE = common dso_local global i32 0, align 4
@TXX9_SIDICR_RIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @serial_txx9_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_txx9_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_txx9_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port* %7)
  store %struct.uart_txx9_port* %8, %struct.uart_txx9_port** %4, align 8
  %9 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %10 = load i32, i32* @TXX9_SIFCR, align 4
  %11 = load i32, i32* @TXX9_SIFCR_TFRST, align 4
  %12 = load i32, i32* @TXX9_SIFCR_RFRST, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @TXX9_SIFCR_FRSTE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @sio_set(%struct.uart_txx9_port* %9, i32 %10, i32 %15)
  %17 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %18 = load i32, i32* @TXX9_SIFCR, align 4
  %19 = load i32, i32* @TXX9_SIFCR_TFRST, align 4
  %20 = load i32, i32* @TXX9_SIFCR_RFRST, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @TXX9_SIFCR_FRSTE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @sio_mask(%struct.uart_txx9_port* %17, i32 %18, i32 %23)
  %25 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %26 = load i32, i32* @TXX9_SIDICR, align 4
  %27 = call i32 @sio_out(%struct.uart_txx9_port* %25, i32 %26, i32 0)
  %28 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %29 = load i32, i32* @TXX9_SIDISR, align 4
  %30 = call i32 @sio_out(%struct.uart_txx9_port* %28, i32 %29, i32 0)
  %31 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %32 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @serial_txx9_interrupt, align 4
  %36 = load i32, i32* @IRQF_SHARED, align 4
  %37 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %38 = call i32 @request_irq(i32 %34, i32 %35, i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.uart_txx9_port* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %71

43:                                               ; preds = %1
  %44 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %45 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %50 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %49, i32 0, i32 0
  %51 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %52 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @serial_txx9_set_mctrl(%struct.TYPE_2__* %50, i32 %54)
  %56 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %57 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %62 = load i32, i32* @TXX9_SIFLCR, align 4
  %63 = load i32, i32* @TXX9_SIFLCR_RSDE, align 4
  %64 = load i32, i32* @TXX9_SIFLCR_TSDE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @sio_mask(%struct.uart_txx9_port* %61, i32 %62, i32 %65)
  %67 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %4, align 8
  %68 = load i32, i32* @TXX9_SIDICR, align 4
  %69 = load i32, i32* @TXX9_SIDICR_RIE, align 4
  %70 = call i32 @sio_set(%struct.uart_txx9_port* %67, i32 %68, i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %43, %41
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port*) #1

declare dso_local i32 @sio_set(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @sio_mask(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @sio_out(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_txx9_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_txx9_set_mctrl(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
