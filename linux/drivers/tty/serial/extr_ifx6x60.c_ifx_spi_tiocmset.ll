; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ifx_spi_device* }
%struct.ifx_spi_device = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@IFX_SPI_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@IFX_SPI_DTR = common dso_local global i32 0, align 4
@IFX_SPI_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @ifx_spi_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifx_spi_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifx_spi_device*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %9, align 8
  store %struct.ifx_spi_device* %10, %struct.ifx_spi_device** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @TIOCM_RTS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @IFX_SPI_RTS, align 4
  %17 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %18 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @TIOCM_DTR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @IFX_SPI_DTR, align 4
  %27 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %28 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @TIOCM_RTS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @IFX_SPI_RTS, align 4
  %37 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %38 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %37, i32 0, i32 0
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @TIOCM_DTR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @IFX_SPI_DTR, align 4
  %47 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %48 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %47, i32 0, i32 0
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @IFX_SPI_UPDATE, align 4
  %52 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %53 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %52, i32 0, i32 0
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  ret i32 0
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
