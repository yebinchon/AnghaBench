; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_write_flash_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_write_flash_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SPI_HW_ERR = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i32 0, align 4
@PINGPONG_BUFFER = common dso_local global i32 0, align 4
@SPI_COMMAND = common dso_local global i32 0, align 4
@SPI_CA_NUMBER = common dso_local global i32 0, align 4
@SPI_COMMAND_BIT_8 = common dso_local global i32 0, align 4
@SPI_ADDRESS_BIT_24 = common dso_local global i32 0, align 4
@SPI_LENGTH1 = common dso_local global i32 0, align 4
@SPI_LENGTH0 = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i32 0, align 4
@SPI_TRANSFER0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0_START = common dso_local global i32 0, align 4
@SPI_CDO_MODE0 = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SPI_TRANSFER0_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_write_flash_status(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 5
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %26 = call i32 @spi_set_init_para(%struct.rtsx_chip* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @STATUS_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %32 = load i32, i32* @SPI_HW_ERR, align 4
  %33 = call i32 @spi_set_err_code(%struct.rtsx_chip* %31, i32 %32)
  %34 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %34, i32* %3, align 4
  br label %104

35:                                               ; preds = %2
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @sf_enable_write(%struct.rtsx_chip* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @STATUS_SUCCESS, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %43, i32* %3, align 4
  br label %104

44:                                               ; preds = %35
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %46 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %45)
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %48 = load i32, i32* @WRITE_REG_CMD, align 4
  %49 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %50 = load i32, i32* @PINGPONG_BUFFER, align 4
  %51 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %47, i32 %48, i32 %49, i32 1, i32 %50)
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %53 = load i32, i32* @WRITE_REG_CMD, align 4
  %54 = load i32, i32* @SPI_COMMAND, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %52, i32 %53, i32 %54, i32 255, i32 %55)
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %58 = load i32, i32* @WRITE_REG_CMD, align 4
  %59 = load i32, i32* @SPI_CA_NUMBER, align 4
  %60 = load i32, i32* @SPI_COMMAND_BIT_8, align 4
  %61 = load i32, i32* @SPI_ADDRESS_BIT_24, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %57, i32 %58, i32 %59, i32 255, i32 %62)
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %65 = load i32, i32* @WRITE_REG_CMD, align 4
  %66 = load i32, i32* @SPI_LENGTH1, align 4
  %67 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %64, i32 %65, i32 %66, i32 255, i32 0)
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %69 = load i32, i32* @WRITE_REG_CMD, align 4
  %70 = load i32, i32* @SPI_LENGTH0, align 4
  %71 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %68, i32 %69, i32 %70, i32 255, i32 1)
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %73 = load i32, i32* @WRITE_REG_CMD, align 4
  %74 = load i32, i32* @PPBUF_BASE2, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %72, i32 %73, i32 %74, i32 255, i32 %75)
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %78 = load i32, i32* @WRITE_REG_CMD, align 4
  %79 = load i32, i32* @SPI_TRANSFER0, align 4
  %80 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %81 = load i32, i32* @SPI_CDO_MODE0, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %77, i32 %78, i32 %79, i32 255, i32 %82)
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %85 = load i32, i32* @CHECK_REG_CMD, align 4
  %86 = load i32, i32* @SPI_TRANSFER0, align 4
  %87 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %88 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %89 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %91 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %90, i32 0, i32 100)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @STATUS_SUCCESS, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %44
  %96 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %97 = call i32 @rtsx_clear_spi_error(%struct.rtsx_chip* %96)
  %98 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %99 = load i32, i32* @SPI_HW_ERR, align 4
  %100 = call i32 @spi_set_err_code(%struct.rtsx_chip* %98, i32 %99)
  %101 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %101, i32* %3, align 4
  br label %104

102:                                              ; preds = %44
  %103 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %95, %42, %30
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @spi_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i32 @spi_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sf_enable_write(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_clear_spi_error(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
