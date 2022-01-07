; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_getsource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_getsource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c24xx_uart_info = type { i32, i32, i32 }

@S3C2410_UCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @s3c24xx_serial_getsource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_getsource(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.s3c24xx_uart_info*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.s3c24xx_uart_info* @s3c24xx_port_to_info(%struct.uart_port* %6)
  store %struct.s3c24xx_uart_info* %7, %struct.s3c24xx_uart_info** %4, align 8
  %8 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %4, align 8
  %9 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = load i32, i32* @S3C2410_UCON, align 4
  %16 = call i32 @rd_regl(%struct.uart_port* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %4, align 8
  %18 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %4, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = lshr i32 %22, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.s3c24xx_uart_info* @s3c24xx_port_to_info(%struct.uart_port*) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
