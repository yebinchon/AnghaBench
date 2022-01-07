; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_rs485_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_rs485_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.serial_rs485 }
%struct.serial_rs485 = type { i32, i32, i32, i32 }
%struct.max310x_one = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@SER_RS485_RTS_ON_SEND = common dso_local global i32 0, align 4
@SER_RS485_RX_DURING_TX = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_rs485*)* @max310x_rs485_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max310x_rs485_config(%struct.uart_port* %0, %struct.serial_rs485* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.serial_rs485*, align 8
  %6 = alloca %struct.max310x_one*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.serial_rs485* %1, %struct.serial_rs485** %5, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %8 = call %struct.max310x_one* @to_max310x_port(%struct.uart_port* %7)
  store %struct.max310x_one* %8, %struct.max310x_one** %6, align 8
  %9 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %10 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 15
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %15 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 15
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @ERANGE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %43

21:                                               ; preds = %13
  %22 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %23 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SER_RS485_ENABLED, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %28 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %32 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memset(i32 %33, i32 0, i32 4)
  %35 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %38 = bitcast %struct.serial_rs485* %36 to i8*
  %39 = bitcast %struct.serial_rs485* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 16, i1 false)
  %40 = load %struct.max310x_one*, %struct.max310x_one** %6, align 8
  %41 = getelementptr inbounds %struct.max310x_one, %struct.max310x_one* %40, i32 0, i32 0
  %42 = call i32 @schedule_work(i32* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %21, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.max310x_one* @to_max310x_port(%struct.uart_port*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
