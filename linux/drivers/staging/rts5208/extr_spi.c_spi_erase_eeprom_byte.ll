; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_erase_eeprom_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_erase_eeprom_byte.c"
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
@SPI_TRANSFER0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0_START = common dso_local global i32 0, align 4
@SPI_CA_MODE0 = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SPI_TRANSFER0_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_erase_eeprom_byte(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %8 = call i32 @spi_init_eeprom(%struct.rtsx_chip* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @STATUS_SUCCESS, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %13, i32* %3, align 4
  br label %82

14:                                               ; preds = %2
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %16 = call i32 @spi_eeprom_program_enable(%struct.rtsx_chip* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @STATUS_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %14
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %24 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %23)
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %26 = load i32, i32* @WRITE_REG_CMD, align 4
  %27 = load i32, i32* @CARD_GPIO_DIR, align 4
  %28 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %25, i32 %26, i32 %27, i32 1, i32 0)
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %30 = load i32, i32* @WRITE_REG_CMD, align 4
  %31 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %32 = load i32, i32* @RING_BUFFER, align 4
  %33 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %29, i32 %30, i32 %31, i32 1, i32 %32)
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %35 = load i32, i32* @WRITE_REG_CMD, align 4
  %36 = load i32, i32* @SPI_COMMAND, align 4
  %37 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %34, i32 %35, i32 %36, i32 255, i32 7)
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %39 = load i32, i32* @WRITE_REG_CMD, align 4
  %40 = load i32, i32* @SPI_ADDR0, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %38, i32 %39, i32 %40, i32 255, i32 %41)
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %44 = load i32, i32* @WRITE_REG_CMD, align 4
  %45 = load i32, i32* @SPI_ADDR1, align 4
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 8
  %48 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %43, i32 %44, i32 %45, i32 255, i32 %47)
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %50 = load i32, i32* @WRITE_REG_CMD, align 4
  %51 = load i32, i32* @SPI_CA_NUMBER, align 4
  %52 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %49, i32 %50, i32 %51, i32 255, i32 70)
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %54 = load i32, i32* @WRITE_REG_CMD, align 4
  %55 = load i32, i32* @SPI_TRANSFER0, align 4
  %56 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %57 = load i32, i32* @SPI_CA_MODE0, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %53, i32 %54, i32 %55, i32 255, i32 %58)
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %61 = load i32, i32* @CHECK_REG_CMD, align 4
  %62 = load i32, i32* @SPI_TRANSFER0, align 4
  %63 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %64 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %65 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %67 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %66, i32 0, i32 100)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %22
  %71 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %71, i32* %3, align 4
  br label %82

72:                                               ; preds = %22
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %74 = load i32, i32* @CARD_GPIO_DIR, align 4
  %75 = call i32 @rtsx_write_register(%struct.rtsx_chip* %73, i32 %74, i32 1, i32 1)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %78, %70, %20, %12
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @spi_init_eeprom(%struct.rtsx_chip*) #1

declare dso_local i32 @spi_eeprom_program_enable(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
