; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mcf.c_mcf_config_rs485.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mcf.c_mcf_config_rs485.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.serial_rs485, i64, i32 }
%struct.serial_rs485 = type { i32 }

@MCFUART_UMR = common dso_local global i64 0, align 8
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Setting UART to RS485\0A\00", align 1
@MCFUART_MR2_TXRTS = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Setting UART to RS232\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_rs485*)* @mcf_config_rs485 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcf_config_rs485(%struct.uart_port* %0, %struct.serial_rs485* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.serial_rs485*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.serial_rs485* %1, %struct.serial_rs485** %4, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MCFUART_UMR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call zeroext i8 @readb(i64 %11)
  store i8 %12, i8* %5, align 1
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MCFUART_UMR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call zeroext i8 @readb(i64 %17)
  store i8 %18, i8* %6, align 1
  %19 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %20 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SER_RS485_ENABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i8, i8* @MCFUART_MR2_TXRTS, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %6, align 1
  br label %48

36:                                               ; preds = %2
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8, i8* @MCFUART_MR2_TXRTS, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %42, -1
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, %43
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %6, align 1
  br label %48

48:                                               ; preds = %36, %25
  %49 = load i8, i8* %5, align 1
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MCFUART_UMR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writeb(i8 zeroext %49, i64 %54)
  %56 = load i8, i8* %6, align 1
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MCFUART_UMR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writeb(i8 zeroext %56, i64 %61)
  %63 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 0
  %65 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %66 = bitcast %struct.serial_rs485* %64 to i8*
  %67 = bitcast %struct.serial_rs485* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 4 %67, i64 4, i1 false)
  ret i32 0
}

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
