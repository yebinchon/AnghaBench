; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_bytes_to_fcr_rxtrig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_bytes_to_fcr_rxtrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial8250_config = type { i8* }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@uart_config = common dso_local global %struct.serial8250_config* null, align 8
@UART_FCR_R_TRIG_00 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@UART_FCR_R_TRIG_MAX_STATE = common dso_local global i32 0, align 4
@UART_FCR_R_TRIG_SHIFT = common dso_local global i32 0, align 4
@UART_FCR_R_TRIG_11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*, i8)* @bytes_to_fcr_rxtrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytes_to_fcr_rxtrig(%struct.uart_8250_port* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.serial8250_config*, align 8
  %7 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.serial8250_config*, %struct.serial8250_config** @uart_config, align 8
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %10 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.serial8250_config, %struct.serial8250_config* %8, i64 %12
  store %struct.serial8250_config* %13, %struct.serial8250_config** %6, align 8
  %14 = load %struct.serial8250_config*, %struct.serial8250_config** %6, align 8
  %15 = getelementptr inbounds %struct.serial8250_config, %struct.serial8250_config* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* @UART_FCR_R_TRIG_00, align 4
  %18 = call i64 @UART_FCR_R_TRIG_BITS(i32 %17)
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @UART_FCR_R_TRIG_MAX_STATE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = load %struct.serial8250_config*, %struct.serial8250_config** %6, align 8
  %34 = getelementptr inbounds %struct.serial8250_config, %struct.serial8250_config* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp slt i32 %32, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @UART_FCR_R_TRIG_SHIFT, align 4
  %46 = shl i32 %44, %45
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %26

51:                                               ; preds = %26
  %52 = load i32, i32* @UART_FCR_R_TRIG_11, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %42, %22
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @UART_FCR_R_TRIG_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
