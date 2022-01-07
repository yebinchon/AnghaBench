; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_write_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_write_eeprom.c"
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
@SPI_ADDR2 = common dso_local global i32 0, align 4
@SPI_CA_NUMBER = common dso_local global i32 0, align 4
@SPI_TRANSFER0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0_START = common dso_local global i32 0, align 4
@SPI_CA_MODE0 = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SPI_TRANSFER0_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_write_eeprom(%struct.rtsx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %10 = call i32 @spi_init_eeprom(%struct.rtsx_chip* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @STATUS_SUCCESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %15, i32* %4, align 4
  br label %89

16:                                               ; preds = %3
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %18 = call i32 @spi_eeprom_program_enable(%struct.rtsx_chip* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @STATUS_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %23, i32* %4, align 4
  br label %89

24:                                               ; preds = %16
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %26 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %25)
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %28 = load i32, i32* @WRITE_REG_CMD, align 4
  %29 = load i32, i32* @CARD_GPIO_DIR, align 4
  %30 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %27, i32 %28, i32 %29, i32 1, i32 0)
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %32 = load i32, i32* @WRITE_REG_CMD, align 4
  %33 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %34 = load i32, i32* @RING_BUFFER, align 4
  %35 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %31, i32 %32, i32 %33, i32 1, i32 %34)
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %37 = load i32, i32* @WRITE_REG_CMD, align 4
  %38 = load i32, i32* @SPI_COMMAND, align 4
  %39 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %36, i32 %37, i32 %38, i32 255, i32 5)
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %41 = load i32, i32* @WRITE_REG_CMD, align 4
  %42 = load i32, i32* @SPI_ADDR0, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %40, i32 %41, i32 %42, i32 255, i32 %43)
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %46 = load i32, i32* @WRITE_REG_CMD, align 4
  %47 = load i32, i32* @SPI_ADDR1, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %45, i32 %46, i32 %47, i32 255, i32 %48)
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %51 = load i32, i32* @WRITE_REG_CMD, align 4
  %52 = load i32, i32* @SPI_ADDR2, align 4
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %53, 8
  %55 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %50, i32 %51, i32 %52, i32 255, i32 %54)
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %57 = load i32, i32* @WRITE_REG_CMD, align 4
  %58 = load i32, i32* @SPI_CA_NUMBER, align 4
  %59 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %56, i32 %57, i32 %58, i32 255, i32 78)
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %61 = load i32, i32* @WRITE_REG_CMD, align 4
  %62 = load i32, i32* @SPI_TRANSFER0, align 4
  %63 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %64 = load i32, i32* @SPI_CA_MODE0, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %60, i32 %61, i32 %62, i32 255, i32 %65)
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %68 = load i32, i32* @CHECK_REG_CMD, align 4
  %69 = load i32, i32* @SPI_TRANSFER0, align 4
  %70 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %71 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %72 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %74 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %73, i32 0, i32 100)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %24
  %78 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %78, i32* %4, align 4
  br label %89

79:                                               ; preds = %24
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %81 = load i32, i32* @CARD_GPIO_DIR, align 4
  %82 = call i32 @rtsx_write_register(%struct.rtsx_chip* %80, i32 %81, i32 1, i32 1)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %85, %77, %22, %14
  %90 = load i32, i32* %4, align 4
  ret i32 %90
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
