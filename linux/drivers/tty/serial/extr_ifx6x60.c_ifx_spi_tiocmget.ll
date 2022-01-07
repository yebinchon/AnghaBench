; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_tiocmget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ifx_spi_device* }
%struct.ifx_spi_device = type { i32 }

@IFX_SPI_RTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@IFX_SPI_DTR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@IFX_SPI_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@IFX_SPI_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@IFX_SPI_DCD = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@IFX_SPI_RI = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @ifx_spi_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifx_spi_tiocmget(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifx_spi_device*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %6, align 8
  store %struct.ifx_spi_device* %7, %struct.ifx_spi_device** %4, align 8
  %8 = load i32, i32* @IFX_SPI_RTS, align 4
  %9 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %10 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @TIOCM_RTS, align 4
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  %18 = load i32, i32* @IFX_SPI_DTR, align 4
  %19 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %20 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @TIOCM_DTR, align 4
  br label %26

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = or i32 %17, %27
  %29 = load i32, i32* @IFX_SPI_CTS, align 4
  %30 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %31 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @TIOCM_CTS, align 4
  br label %37

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %28, %38
  %40 = load i32, i32* @IFX_SPI_DSR, align 4
  %41 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %42 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %41, i32 0, i32 0
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @TIOCM_DSR, align 4
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %39, %49
  %51 = load i32, i32* @IFX_SPI_DCD, align 4
  %52 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %53 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %52, i32 0, i32 0
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @TIOCM_CAR, align 4
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = or i32 %50, %60
  %62 = load i32, i32* @IFX_SPI_RI, align 4
  %63 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %4, align 8
  %64 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %63, i32 0, i32 0
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @TIOCM_RNG, align 4
  br label %70

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = or i32 %61, %71
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
