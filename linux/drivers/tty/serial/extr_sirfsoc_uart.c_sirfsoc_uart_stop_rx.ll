; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sirfsoc_uart_port = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, %struct.sirfsoc_int_en, %struct.sirfsoc_register }
%struct.sirfsoc_int_en = type { i32 }
%struct.sirfsoc_register = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sirfsoc_uart_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_uart_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sirfsoc_uart_port*, align 8
  %4 = alloca %struct.sirfsoc_register*, align 8
  %5 = alloca %struct.sirfsoc_int_en*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %6)
  store %struct.sirfsoc_uart_port* %7, %struct.sirfsoc_uart_port** %3, align 8
  %8 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store %struct.sirfsoc_register* %11, %struct.sirfsoc_register** %4, align 8
  %12 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.sirfsoc_int_en* %15, %struct.sirfsoc_int_en** %5, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %18 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wr_regl(%struct.uart_port* %16, i32 %19, i32 0)
  %21 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %1
  %26 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %27 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %25
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %33 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %37 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rd_regl(%struct.uart_port* %35, i32 %38)
  %40 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %41 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %42 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SIRFUART_RX_DMA_INT_EN(%struct.sirfsoc_int_en* %40, i32 %45)
  %47 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %48 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %39, %51
  %53 = call i32 @wr_regl(%struct.uart_port* %31, i32 %34, i32 %52)
  br label %71

54:                                               ; preds = %25
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %57 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %60 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %61 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SIRFUART_RX_DMA_INT_EN(%struct.sirfsoc_int_en* %59, i32 %64)
  %66 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %67 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %65, %68
  %70 = call i32 @wr_regl(%struct.uart_port* %55, i32 %58, i32 %69)
  br label %71

71:                                               ; preds = %54, %30
  %72 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %73 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @dmaengine_terminate_all(i64 %74)
  br label %115

76:                                               ; preds = %1
  %77 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %78 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %76
  %82 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %83 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %84 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %87 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %88 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rd_regl(%struct.uart_port* %86, i32 %89)
  %91 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %92 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %93 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @SIRFUART_RX_IO_INT_EN(%struct.sirfsoc_int_en* %91, i32 %96)
  %98 = xor i32 %97, -1
  %99 = and i32 %90, %98
  %100 = call i32 @wr_regl(%struct.uart_port* %82, i32 %85, i32 %99)
  br label %114

101:                                              ; preds = %76
  %102 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %103 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %104 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %107 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %108 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @SIRFUART_RX_IO_INT_EN(%struct.sirfsoc_int_en* %106, i32 %111)
  %113 = call i32 @wr_regl(%struct.uart_port* %102, i32 %105, i32 %112)
  br label %114

114:                                              ; preds = %101, %81
  br label %115

115:                                              ; preds = %114, %71
  ret void
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @SIRFUART_RX_DMA_INT_EN(%struct.sirfsoc_int_en*, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i64) #1

declare dso_local i32 @SIRFUART_RX_IO_INT_EN(%struct.sirfsoc_int_en*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
