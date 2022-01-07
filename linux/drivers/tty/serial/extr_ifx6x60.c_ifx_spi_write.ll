; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ifx_spi_device* }
%struct.ifx_spi_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @ifx_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifx_spi_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifx_spi_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %13, align 8
  store %struct.ifx_spi_device* %14, %struct.ifx_spi_device** %7, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %17 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %21 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %20, i32 0, i32 1
  %22 = call i32 @kfifo_is_empty(i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %24 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %23, i32 0, i32 1
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @kfifo_in(i32* %24, i8* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %29 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %36 = call i32 @mrdy_assert(%struct.ifx_spi_device* %35)
  br label %37

37:                                               ; preds = %34, %3
  %38 = load i32, i32* %11, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfifo_is_empty(i32*) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mrdy_assert(%struct.ifx_spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
