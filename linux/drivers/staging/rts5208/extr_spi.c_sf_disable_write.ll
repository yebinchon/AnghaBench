; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_sf_disable_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_sf_disable_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.spi_info }
%struct.spi_info = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@SPI_COMMAND = common dso_local global i32 0, align 4
@SPI_CA_NUMBER = common dso_local global i32 0, align 4
@SPI_COMMAND_BIT_8 = common dso_local global i32 0, align 4
@SPI_ADDRESS_BIT_24 = common dso_local global i32 0, align 4
@SPI_TRANSFER0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0_START = common dso_local global i32 0, align 4
@SPI_C_MODE0 = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SPI_TRANSFER0_END = common dso_local global i32 0, align 4
@SPI_HW_ERR = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @sf_disable_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sf_disable_write(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_info*, align 8
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 0
  store %struct.spi_info* %9, %struct.spi_info** %6, align 8
  %10 = load %struct.spi_info*, %struct.spi_info** %6, align 8
  %11 = getelementptr inbounds %struct.spi_info, %struct.spi_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %15, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %18 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %17)
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %20 = load i32, i32* @WRITE_REG_CMD, align 4
  %21 = load i32, i32* @SPI_COMMAND, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %19, i32 %20, i32 %21, i32 255, i32 %22)
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %25 = load i32, i32* @WRITE_REG_CMD, align 4
  %26 = load i32, i32* @SPI_CA_NUMBER, align 4
  %27 = load i32, i32* @SPI_COMMAND_BIT_8, align 4
  %28 = load i32, i32* @SPI_ADDRESS_BIT_24, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %24, i32 %25, i32 %26, i32 255, i32 %29)
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %32 = load i32, i32* @WRITE_REG_CMD, align 4
  %33 = load i32, i32* @SPI_TRANSFER0, align 4
  %34 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %35 = load i32, i32* @SPI_C_MODE0, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %31, i32 %32, i32 %33, i32 255, i32 %36)
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %39 = load i32, i32* @CHECK_REG_CMD, align 4
  %40 = load i32, i32* @SPI_TRANSFER0, align 4
  %41 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %42 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %43 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %45 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %44, i32 0, i32 100)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %16
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %50 = call i32 @rtsx_clear_spi_error(%struct.rtsx_chip* %49)
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %52 = load i32, i32* @SPI_HW_ERR, align 4
  %53 = call i32 @spi_set_err_code(%struct.rtsx_chip* %51, i32 %52)
  %54 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %16
  %56 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %48, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_clear_spi_error(%struct.rtsx_chip*) #1

declare dso_local i32 @spi_set_err_code(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
