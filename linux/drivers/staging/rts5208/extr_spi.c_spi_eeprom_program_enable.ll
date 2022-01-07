; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_eeprom_program_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_eeprom_program_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@SPI_CA_NUMBER = common dso_local global i32 0, align 4
@SPI_COMMAND = common dso_local global i32 0, align 4
@SPI_TRANSFER0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0_START = common dso_local global i32 0, align 4
@SPI_CA_MODE0 = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SPI_TRANSFER0_END = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @spi_eeprom_program_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_eeprom_program_enable(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %5)
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = load i32, i32* @WRITE_REG_CMD, align 4
  %9 = load i32, i32* @SPI_CA_NUMBER, align 4
  %10 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %7, i32 %8, i32 %9, i32 255, i32 134)
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %12 = load i32, i32* @WRITE_REG_CMD, align 4
  %13 = load i32, i32* @SPI_COMMAND, align 4
  %14 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %11, i32 %12, i32 %13, i32 255, i32 19)
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %16 = load i32, i32* @WRITE_REG_CMD, align 4
  %17 = load i32, i32* @SPI_TRANSFER0, align 4
  %18 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %19 = load i32, i32* @SPI_CA_MODE0, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %15, i32 %16, i32 %17, i32 255, i32 %20)
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %23 = load i32, i32* @CHECK_REG_CMD, align 4
  %24 = load i32, i32* @SPI_TRANSFER0, align 4
  %25 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %26 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %27 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %29 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %28, i32 0, i32 100)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
