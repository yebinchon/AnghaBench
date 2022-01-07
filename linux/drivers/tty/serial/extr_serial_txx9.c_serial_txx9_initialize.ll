; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_txx9_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TXX9_SIFCR = common dso_local global i32 0, align 4
@TXX9_SIFCR_SWRST = common dso_local global i32 0, align 4
@TXX9_SIFCR_TDIL_MAX = common dso_local global i32 0, align 4
@TXX9_SIFCR_RDIL_1 = common dso_local global i32 0, align 4
@TXX9_SILCR = common dso_local global i32 0, align 4
@TXX9_SILCR_UMODE_8BIT = common dso_local global i32 0, align 4
@TXX9_SILCR_USBL_1BIT = common dso_local global i32 0, align 4
@UPF_TXX9_USE_SCLK = common dso_local global i32 0, align 4
@TXX9_SILCR_SCS_SCLK_BG = common dso_local global i32 0, align 4
@TXX9_SILCR_SCS_IMCLK_BG = common dso_local global i32 0, align 4
@TXX9_SIFLCR = common dso_local global i32 0, align 4
@TXX9_SIFLCR_RTSTL_MAX = common dso_local global i32 0, align 4
@TXX9_SIDICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_txx9_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_txx9_initialize(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_txx9_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port* %5)
  store %struct.uart_txx9_port* %6, %struct.uart_txx9_port** %3, align 8
  store i32 10000, i32* %4, align 4
  %7 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %8 = load i32, i32* @TXX9_SIFCR, align 4
  %9 = load i32, i32* @TXX9_SIFCR_SWRST, align 4
  %10 = call i32 @sio_out(%struct.uart_txx9_port* %7, i32 %8, i32 %9)
  %11 = call i32 @udelay(i32 1)
  br label %12

12:                                               ; preds = %25, %1
  %13 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %14 = load i32, i32* @TXX9_SIFCR, align 4
  %15 = call i32 @sio_in(%struct.uart_txx9_port* %13, i32 %14)
  %16 = load i32, i32* @TXX9_SIFCR_SWRST, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi i1 [ false, %12 ], [ %22, %19 ]
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = call i32 @udelay(i32 1)
  br label %12

27:                                               ; preds = %23
  %28 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %29 = load i32, i32* @TXX9_SIFCR, align 4
  %30 = load i32, i32* @TXX9_SIFCR_TDIL_MAX, align 4
  %31 = load i32, i32* @TXX9_SIFCR_RDIL_1, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @sio_set(%struct.uart_txx9_port* %28, i32 %29, i32 %32)
  %34 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %35 = load i32, i32* @TXX9_SILCR, align 4
  %36 = load i32, i32* @TXX9_SILCR_UMODE_8BIT, align 4
  %37 = load i32, i32* @TXX9_SILCR_USBL_1BIT, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %40 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UPF_TXX9_USE_SCLK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = load i32, i32* @TXX9_SILCR_SCS_SCLK_BG, align 4
  br label %50

48:                                               ; preds = %27
  %49 = load i32, i32* @TXX9_SILCR_SCS_IMCLK_BG, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = or i32 %38, %51
  %53 = call i32 @sio_out(%struct.uart_txx9_port* %34, i32 %35, i32 %52)
  %54 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = call i32 @uart_get_divisor(%struct.uart_port* %55, i32 9600)
  %57 = call i32 @sio_quot_set(%struct.uart_txx9_port* %54, i32 %56)
  %58 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %59 = load i32, i32* @TXX9_SIFLCR, align 4
  %60 = load i32, i32* @TXX9_SIFLCR_RTSTL_MAX, align 4
  %61 = call i32 @sio_out(%struct.uart_txx9_port* %58, i32 %59, i32 %60)
  %62 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %63 = load i32, i32* @TXX9_SIDICR, align 4
  %64 = call i32 @sio_out(%struct.uart_txx9_port* %62, i32 %63, i32 0)
  ret void
}

declare dso_local %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port*) #1

declare dso_local i32 @sio_out(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sio_in(%struct.uart_txx9_port*, i32) #1

declare dso_local i32 @sio_set(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @sio_quot_set(%struct.uart_txx9_port*, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
