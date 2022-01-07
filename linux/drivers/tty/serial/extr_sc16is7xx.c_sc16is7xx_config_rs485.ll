; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_config_rs485.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_config_rs485.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.serial_rs485, i32 }
%struct.serial_rs485 = type { i32, i64 }
%struct.sc16is7xx_port = type { i32 }
%struct.sc16is7xx_one = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@SER_RS485_RTS_AFTER_SEND = common dso_local global i32 0, align 4
@SER_RS485_RTS_ON_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"unsupported RTS signalling on_send:%d after_send:%d - exactly one of RS485 RTS flags should be set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SC16IS7XX_RECONF_RS485 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_rs485*)* @sc16is7xx_config_rs485 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc16is7xx_config_rs485(%struct.uart_port* %0, %struct.serial_rs485* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.serial_rs485*, align 8
  %6 = alloca %struct.sc16is7xx_port*, align 8
  %7 = alloca %struct.sc16is7xx_one*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.serial_rs485* %1, %struct.serial_rs485** %5, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.sc16is7xx_port* @dev_get_drvdata(i32 %12)
  store %struct.sc16is7xx_port* %13, %struct.sc16is7xx_port** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = call %struct.sc16is7xx_one* @to_sc16is7xx_one(%struct.uart_port* %14, %struct.uart_port* %15)
  store %struct.sc16is7xx_one* %16, %struct.sc16is7xx_one** %7, align 8
  %17 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %18 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SER_RS485_ENABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %2
  %24 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %25 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %30 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %23
  %45 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %46 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %70

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %57 = bitcast %struct.serial_rs485* %55 to i8*
  %58 = bitcast %struct.serial_rs485* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = load i32, i32* @SC16IS7XX_RECONF_RS485, align 4
  %60 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %7, align 8
  %61 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %6, align 8
  %66 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %65, i32 0, i32 0
  %67 = load %struct.sc16is7xx_one*, %struct.sc16is7xx_one** %7, align 8
  %68 = getelementptr inbounds %struct.sc16is7xx_one, %struct.sc16is7xx_one* %67, i32 0, i32 0
  %69 = call i32 @kthread_queue_work(i32* %66, i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %53, %49
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.sc16is7xx_port* @dev_get_drvdata(i32) #1

declare dso_local %struct.sc16is7xx_one* @to_sc16is7xx_one(%struct.uart_port*, %struct.uart_port*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kthread_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
