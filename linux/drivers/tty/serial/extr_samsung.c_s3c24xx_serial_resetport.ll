; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_resetport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_resetport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c2410_uartcfg = type { i64, i64 }
%struct.s3c24xx_uart_info = type { i32, i64 }

@S3C2410_UCON = common dso_local global i32 0, align 4
@PORT_S3C2440 = common dso_local global i64 0, align 8
@S3C2440_UCON0_DIVMASK = common dso_local global i32 0, align 4
@S3C2410_UFCON = common dso_local global i32 0, align 4
@S3C2410_UFCON_RESETBOTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.s3c2410_uartcfg*)* @s3c24xx_serial_resetport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_serial_resetport(%struct.uart_port* %0, %struct.s3c2410_uartcfg* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.s3c2410_uartcfg*, align 8
  %5 = alloca %struct.s3c24xx_uart_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.s3c2410_uartcfg* %1, %struct.s3c2410_uartcfg** %4, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call %struct.s3c24xx_uart_info* @s3c24xx_port_to_info(%struct.uart_port* %8)
  store %struct.s3c24xx_uart_info* %9, %struct.s3c24xx_uart_info** %5, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = load i32, i32* @S3C2410_UCON, align 4
  %12 = call i64 @rd_regl(%struct.uart_port* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %5, align 8
  %14 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %5, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PORT_S3C2440, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @S3C2440_UCON0_DIVMASK, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* %6, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %6, align 8
  %30 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %31 = load i32, i32* @S3C2410_UCON, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %34 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = or i64 %32, %35
  %37 = call i32 @wr_regl(%struct.uart_port* %30, i32 %31, i64 %36)
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = load i32, i32* @S3C2410_UFCON, align 4
  %40 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %41 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @S3C2410_UFCON_RESETBOTH, align 8
  %44 = or i64 %42, %43
  %45 = call i32 @wr_regl(%struct.uart_port* %38, i32 %39, i64 %44)
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = load i32, i32* @S3C2410_UFCON, align 4
  %48 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %4, align 8
  %49 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @wr_regl(%struct.uart_port* %46, i32 %47, i64 %50)
  %52 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local %struct.s3c24xx_uart_info* @s3c24xx_port_to_info(%struct.uart_port*) #1

declare dso_local i64 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
