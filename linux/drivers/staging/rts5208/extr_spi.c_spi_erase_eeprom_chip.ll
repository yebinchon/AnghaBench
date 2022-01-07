; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_erase_eeprom_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_erase_eeprom_chip.c"
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
@SPI_CA_NUMBER = common dso_local global i32 0, align 4
@SPI_TRANSFER0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0_START = common dso_local global i32 0, align 4
@SPI_CA_MODE0 = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SPI_TRANSFER0_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_erase_eeprom_chip(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = call i32 @spi_init_eeprom(%struct.rtsx_chip* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @STATUS_SUCCESS, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %11, i32* %2, align 4
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %14 = call i32 @spi_eeprom_program_enable(%struct.rtsx_chip* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @STATUS_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %12
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %22 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %21)
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %24 = load i32, i32* @WRITE_REG_CMD, align 4
  %25 = load i32, i32* @CARD_GPIO_DIR, align 4
  %26 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %23, i32 %24, i32 %25, i32 1, i32 0)
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %28 = load i32, i32* @WRITE_REG_CMD, align 4
  %29 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %30 = load i32, i32* @RING_BUFFER, align 4
  %31 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %27, i32 %28, i32 %29, i32 1, i32 %30)
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %33 = load i32, i32* @WRITE_REG_CMD, align 4
  %34 = load i32, i32* @SPI_COMMAND, align 4
  %35 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %32, i32 %33, i32 %34, i32 255, i32 18)
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %37 = load i32, i32* @WRITE_REG_CMD, align 4
  %38 = load i32, i32* @SPI_CA_NUMBER, align 4
  %39 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %36, i32 %37, i32 %38, i32 255, i32 132)
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %41 = load i32, i32* @WRITE_REG_CMD, align 4
  %42 = load i32, i32* @SPI_TRANSFER0, align 4
  %43 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %44 = load i32, i32* @SPI_CA_MODE0, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %40, i32 %41, i32 %42, i32 255, i32 %45)
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %48 = load i32, i32* @CHECK_REG_CMD, align 4
  %49 = load i32, i32* @SPI_TRANSFER0, align 4
  %50 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %51 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %52 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %54 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %53, i32 0, i32 100)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %20
  %58 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %58, i32* %2, align 4
  br label %69

59:                                               ; preds = %20
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %61 = load i32, i32* @CARD_GPIO_DIR, align 4
  %62 = call i32 @rtsx_write_register(%struct.rtsx_chip* %60, i32 %61, i32 1, i32 1)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %65, %57, %18, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
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
