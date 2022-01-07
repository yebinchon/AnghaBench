; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_rs485_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_rs485_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.serial_rs485 }
%struct.serial_rs485 = type { i32, i8*, i8* }
%struct.uart_8250_port = type { i32 }

@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_rs485*)* @omap_8250_rs485_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_8250_rs485_config(%struct.uart_port* %0, %struct.serial_rs485* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.serial_rs485*, align 8
  %6 = alloca %struct.uart_8250_port*, align 8
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.serial_rs485* %1, %struct.serial_rs485** %5, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %9 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %8)
  store %struct.uart_8250_port* %9, %struct.uart_8250_port** %6, align 8
  %10 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %11 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @min(i8* %12, i32 100)
  %14 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %15 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %17 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @min(i8* %18, i32 100)
  %20 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %21 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %25 = bitcast %struct.serial_rs485* %23 to i8*
  %26 = bitcast %struct.serial_rs485* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false)
  %27 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %28 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SER_RS485_ENABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %2
  %34 = load %struct.uart_8250_port*, %struct.uart_8250_port** %6, align 8
  %35 = call i32 @serial8250_em485_init(%struct.uart_8250_port* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i32, i32* @SER_RS485_ENABLED, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %42 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @SER_RS485_ENABLED, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %46
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %38, %33
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %2
  %55 = load %struct.uart_8250_port*, %struct.uart_8250_port** %6, align 8
  %56 = call i32 @serial8250_em485_destroy(%struct.uart_8250_port* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %52
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i8* @min(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @serial8250_em485_init(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_em485_destroy(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
