; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_spi.c_kp_spi_txrx_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_spi.c_kp_spi_txrx_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.kp_spi_controller_state* }
%struct.kp_spi_controller_state = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@KP_SPI_REG_STATUS = common dso_local global i32 0, align 4
@KP_SPI_REG_STATUS_TXS = common dso_local global i32 0, align 4
@KP_SPI_REG_TXDATA = common dso_local global i32 0, align 4
@KP_SPI_REG_STATUS_RXS = common dso_local global i32 0, align 4
@KP_SPI_REG_RXDATA = common dso_local global i32 0, align 4
@KP_SPI_REG_STATUS_EOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @kp_spi_txrx_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kp_spi_txrx_pio(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.kp_spi_controller_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %16, align 8
  store %struct.kp_spi_controller_state* %17, %struct.kp_spi_controller_state** %5, align 8
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %55, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %11, align 8
  %38 = load i32, i32* %36, align 4
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %13, align 1
  %40 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %5, align 8
  %41 = load i32, i32* @KP_SPI_REG_STATUS, align 4
  %42 = load i32, i32* @KP_SPI_REG_STATUS_TXS, align 4
  %43 = call i32 @kp_spi_wait_for_reg_bit(%struct.kp_spi_controller_state* %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %101

47:                                               ; preds = %35
  %48 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %5, align 8
  %49 = load i32, i32* @KP_SPI_REG_TXDATA, align 4
  %50 = load i8, i8* %13, align 1
  %51 = sext i8 %50 to i32
  %52 = call i32 @kp_spi_write_reg(%struct.kp_spi_controller_state* %48, i32 %49, i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %31

58:                                               ; preds = %31
  br label %93

59:                                               ; preds = %2
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %88, %62
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  store i8 0, i8* %14, align 1
  %68 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %5, align 8
  %69 = load i32, i32* @KP_SPI_REG_TXDATA, align 4
  %70 = call i32 @kp_spi_write_reg(%struct.kp_spi_controller_state* %68, i32 %69, i32 0)
  %71 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %5, align 8
  %72 = load i32, i32* @KP_SPI_REG_STATUS, align 4
  %73 = load i32, i32* @KP_SPI_REG_STATUS_RXS, align 4
  %74 = call i32 @kp_spi_wait_for_reg_bit(%struct.kp_spi_controller_state* %71, i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %101

78:                                               ; preds = %67
  %79 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %5, align 8
  %80 = load i32, i32* @KP_SPI_REG_RXDATA, align 4
  %81 = call signext i8 @kp_spi_read_reg(%struct.kp_spi_controller_state* %79, i32 %80)
  store i8 %81, i8* %14, align 1
  %82 = load i8, i8* %14, align 1
  %83 = sext i8 %82 to i32
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %10, align 8
  store i32 %83, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %63

91:                                               ; preds = %63
  br label %92

92:                                               ; preds = %91, %59
  br label %93

93:                                               ; preds = %92, %58
  %94 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %5, align 8
  %95 = load i32, i32* @KP_SPI_REG_STATUS, align 4
  %96 = load i32, i32* @KP_SPI_REG_STATUS_EOT, align 4
  %97 = call i32 @kp_spi_wait_for_reg_bit(%struct.kp_spi_controller_state* %94, i32 %95, i32 %96)
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %93
  br label %101

101:                                              ; preds = %100, %77, %46
  %102 = load i32, i32* %12, align 4
  ret i32 %102
}

declare dso_local i32 @kp_spi_wait_for_reg_bit(%struct.kp_spi_controller_state*, i32, i32) #1

declare dso_local i32 @kp_spi_write_reg(%struct.kp_spi_controller_state*, i32, i32) #1

declare dso_local signext i8 @kp_spi_read_reg(%struct.kp_spi_controller_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
