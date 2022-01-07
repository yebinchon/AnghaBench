; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_setsource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_setsource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c24xx_uart_info = type { i32, i32, i32 }

@S3C2410_UCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @s3c24xx_serial_setsource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_serial_setsource(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c24xx_uart_info*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.s3c24xx_uart_info* @s3c24xx_port_to_info(%struct.uart_port* %7)
  store %struct.s3c24xx_uart_info* %8, %struct.s3c24xx_uart_info** %5, align 8
  %9 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %5, align 8
  %10 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = load i32, i32* @S3C2410_UCON, align 4
  %17 = call i32 @rd_regl(%struct.uart_port* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %5, align 8
  %20 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %5, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = lshr i32 %22, %25
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %48

30:                                               ; preds = %14
  %31 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %5, align 8
  %32 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %5, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %37, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %45 = load i32, i32* @S3C2410_UCON, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @wr_regl(%struct.uart_port* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %30, %29, %13
  ret void
}

declare dso_local %struct.s3c24xx_uart_info* @s3c24xx_port_to_info(%struct.uart_port*) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
