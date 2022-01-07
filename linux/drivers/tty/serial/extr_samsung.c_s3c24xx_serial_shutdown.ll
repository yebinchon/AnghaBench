; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c24xx_uart_port = type { i64, i64, i64, i32, i64, i64, i32 }

@S3C64XX_UINTP = common dso_local global i32 0, align 4
@S3C64XX_UINTM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @s3c24xx_serial_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_serial_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.s3c24xx_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.s3c24xx_uart_port* @to_ourport(%struct.uart_port* %6)
  store %struct.s3c24xx_uart_port* %7, %struct.s3c24xx_uart_port** %3, align 8
  %8 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = call i64 @s3c24xx_serial_has_interrupt_mask(%struct.uart_port* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.s3c24xx_uart_port* %20)
  br label %22

22:                                               ; preds = %16, %12
  store i32 0, i32* %4, align 4
  %23 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = call i64 @s3c24xx_serial_has_interrupt_mask(%struct.uart_port* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %38 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %41 = call i32 @free_irq(i32 %39, %struct.s3c24xx_uart_port* %40)
  br label %42

42:                                               ; preds = %36, %32
  %43 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %27
  %46 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %47 = call i64 @s3c24xx_serial_has_interrupt_mask(%struct.uart_port* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %54 = call i32 @free_irq(i32 %52, %struct.s3c24xx_uart_port* %53)
  %55 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %56 = load i32, i32* @S3C64XX_UINTP, align 4
  %57 = call i32 @wr_regl(%struct.uart_port* %55, i32 %56, i32 15)
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = load i32, i32* @S3C64XX_UINTM, align 4
  %60 = call i32 @wr_regl(%struct.uart_port* %58, i32 %59, i32 15)
  br label %61

61:                                               ; preds = %49, %45
  %62 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %63 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %68 = call i32 @s3c24xx_serial_release_dma(%struct.s3c24xx_uart_port* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %71 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  ret void
}

declare dso_local %struct.s3c24xx_uart_port* @to_ourport(%struct.uart_port*) #1

declare dso_local i64 @s3c24xx_serial_has_interrupt_mask(%struct.uart_port*) #1

declare dso_local i32 @free_irq(i32, %struct.s3c24xx_uart_port*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @s3c24xx_serial_release_dma(%struct.s3c24xx_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
