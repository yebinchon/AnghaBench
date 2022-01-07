; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_rs485_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_rs485_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.serial_rs485 }
%struct.serial_rs485 = type { i32, i64, i64 }
%struct.imx_port = type { i32, i64 }

@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@SER_RS485_RTS_ON_SEND = common dso_local global i32 0, align 4
@SER_RS485_RX_DURING_TX = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@SER_RS485_RTS_AFTER_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_rs485*)* @imx_uart_rs485_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_rs485_config(%struct.uart_port* %0, %struct.serial_rs485* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.serial_rs485*, align 8
  %5 = alloca %struct.imx_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.serial_rs485* %1, %struct.serial_rs485** %4, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.imx_port*
  store %struct.imx_port* %8, %struct.imx_port** %5, align 8
  %9 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %10 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %12 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %14 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %19 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @SER_RS485_ENABLED, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %26 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %22, %17, %2
  %30 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %31 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SER_RS485_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %29
  %37 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %38 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %43 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %41
  %47 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %48 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %55 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %56 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %46, %41, %36
  %60 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %61 = load i32, i32* @UCR2, align 4
  %62 = call i32 @imx_uart_readl(%struct.imx_port* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %64 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %71 = call i32 @imx_uart_rts_active(%struct.imx_port* %70, i32* %6)
  br label %75

72:                                               ; preds = %59
  %73 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %74 = call i32 @imx_uart_rts_inactive(%struct.imx_port* %73, i32* %6)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @UCR2, align 4
  %79 = call i32 @imx_uart_writel(%struct.imx_port* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %29
  %81 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %82 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SER_RS485_ENABLED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %89 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87, %80
  %95 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %96 = call i32 @imx_uart_start_rx(%struct.uart_port* %95)
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 0
  %100 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %101 = bitcast %struct.serial_rs485* %99 to i8*
  %102 = bitcast %struct.serial_rs485* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 24, i1 false)
  ret i32 0
}

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_rts_active(%struct.imx_port*, i32*) #1

declare dso_local i32 @imx_uart_rts_inactive(%struct.imx_port*, i32*) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @imx_uart_start_rx(%struct.uart_port*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
