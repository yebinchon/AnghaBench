; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_fcr_get_rxtrig_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_fcr_get_rxtrig_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial8250_config = type { i8* }
%struct.uart_8250_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@uart_config = common dso_local global %struct.serial8250_config* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @fcr_get_rxtrig_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcr_get_rxtrig_bytes(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.serial8250_config*, align 8
  %4 = alloca i8, align 1
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %5 = load %struct.serial8250_config*, %struct.serial8250_config** @uart_config, align 8
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.serial8250_config, %struct.serial8250_config* %5, i64 %9
  store %struct.serial8250_config* %10, %struct.serial8250_config** %3, align 8
  %11 = load %struct.serial8250_config*, %struct.serial8250_config** %3, align 8
  %12 = getelementptr inbounds %struct.serial8250_config, %struct.serial8250_config* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @UART_FCR_R_TRIG_BITS(i32 %16)
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %4, align 1
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %25, %23 ], [ %28, %26 ]
  ret i32 %30
}

declare dso_local i64 @UART_FCR_R_TRIG_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
