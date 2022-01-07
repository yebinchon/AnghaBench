; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_GPIO_DIR = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i32 0, align 4
@RING_BUFFER = common dso_local global i32 0, align 4
@SPI_COMMAND = common dso_local global i32 0, align 4
@SPI_ADDR0 = common dso_local global i32 0, align 4
@SPI_ADDR1 = common dso_local global i32 0, align 4
@SPI_CA_NUMBER = common dso_local global i32 0, align 4
@SPI_LENGTH0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0_START = common dso_local global i32 0, align 4
@SPI_CADI_MODE0 = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SPI_TRANSFER0_END = common dso_local global i32 0, align 4
@SPI_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_read_eeprom(%struct.rtsx_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %11 = call i32 @spi_init_eeprom(%struct.rtsx_chip* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %16, i32* %4, align 4
  br label %96

17:                                               ; preds = %3
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %19 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %18)
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %21 = load i32, i32* @WRITE_REG_CMD, align 4
  %22 = load i32, i32* @CARD_GPIO_DIR, align 4
  %23 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %20, i32 %21, i32 %22, i32 1, i32 0)
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %25 = load i32, i32* @WRITE_REG_CMD, align 4
  %26 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %27 = load i32, i32* @RING_BUFFER, align 4
  %28 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %24, i32 %25, i32 %26, i32 1, i32 %27)
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %30 = load i32, i32* @WRITE_REG_CMD, align 4
  %31 = load i32, i32* @SPI_COMMAND, align 4
  %32 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %29, i32 %30, i32 %31, i32 255, i32 6)
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %34 = load i32, i32* @WRITE_REG_CMD, align 4
  %35 = load i32, i32* @SPI_ADDR0, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %33, i32 %34, i32 %35, i32 255, i32 %36)
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %39 = load i32, i32* @WRITE_REG_CMD, align 4
  %40 = load i32, i32* @SPI_ADDR1, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 8
  %43 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %38, i32 %39, i32 %40, i32 255, i32 %42)
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %45 = load i32, i32* @WRITE_REG_CMD, align 4
  %46 = load i32, i32* @SPI_CA_NUMBER, align 4
  %47 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %44, i32 %45, i32 %46, i32 255, i32 70)
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %49 = load i32, i32* @WRITE_REG_CMD, align 4
  %50 = load i32, i32* @SPI_LENGTH0, align 4
  %51 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %48, i32 %49, i32 %50, i32 255, i32 1)
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %53 = load i32, i32* @WRITE_REG_CMD, align 4
  %54 = load i32, i32* @SPI_TRANSFER0, align 4
  %55 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %56 = load i32, i32* @SPI_CADI_MODE0, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %52, i32 %53, i32 %54, i32 255, i32 %57)
  %59 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %60 = load i32, i32* @CHECK_REG_CMD, align 4
  %61 = load i32, i32* @SPI_TRANSFER0, align 4
  %62 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %63 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %64 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %66 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %65, i32 0, i32 100)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %17
  %70 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %70, i32* %4, align 4
  br label %96

71:                                               ; preds = %17
  %72 = call i32 @wait_timeout(i32 5)
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %74 = load i32, i32* @SPI_DATA, align 4
  %75 = call i32 @rtsx_read_register(%struct.rtsx_chip* %73, i32 %74, i32* %9)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %96

80:                                               ; preds = %71
  %81 = load i32*, i32** %7, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %88 = load i32, i32* @CARD_GPIO_DIR, align 4
  %89 = call i32 @rtsx_write_register(%struct.rtsx_chip* %87, i32 %88, i32 1, i32 1)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %92, %78, %69, %15
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @spi_init_eeprom(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
