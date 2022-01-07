; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc52xx_uart_verify_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc52xx_uart_verify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i64, i64 }
%struct.serial_struct = type { i64, i64, i64, i64, i8*, i64 }

@PORT_UNKNOWN = common dso_local global i64 0, align 8
@PORT_MPC52xx = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_struct*)* @mpc52xx_uart_verify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_uart_verify_port(%struct.uart_port* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %6 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %7 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PORT_UNKNOWN, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %13 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PORT_MPC52xx, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %11, %2
  %21 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %22 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %56, label %28

28:                                               ; preds = %20
  %29 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %30 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UPIO_MEM, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %56, label %34

34:                                               ; preds = %28
  %35 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %36 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %34
  %43 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %44 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = icmp ne i8* %45, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %42
  %52 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %53 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %42, %34, %28, %20
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %56, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
