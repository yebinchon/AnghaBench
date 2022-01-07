; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_sf_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_sf_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@SPI_COMMAND = common dso_local global i32 0, align 4
@SPI_CA_NUMBER = common dso_local global i32 0, align 4
@SPI_COMMAND_BIT_8 = common dso_local global i32 0, align 4
@SPI_ADDRESS_BIT_24 = common dso_local global i32 0, align 4
@SPI_ADDR0 = common dso_local global i32 0, align 4
@SPI_ADDR1 = common dso_local global i32 0, align 4
@SPI_ADDR2 = common dso_local global i32 0, align 4
@SPI_TRANSFER0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0_START = common dso_local global i32 0, align 4
@SPI_CA_MODE0 = common dso_local global i32 0, align 4
@SPI_C_MODE0 = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SPI_TRANSFER0_END = common dso_local global i32 0, align 4
@SPI_HW_ERR = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32)* @sf_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sf_erase(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %12 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %11)
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %14 = load i32, i32* @WRITE_REG_CMD, align 4
  %15 = load i32, i32* @SPI_COMMAND, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %13, i32 %14, i32 %15, i32 255, i32 %16)
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %19 = load i32, i32* @WRITE_REG_CMD, align 4
  %20 = load i32, i32* @SPI_CA_NUMBER, align 4
  %21 = load i32, i32* @SPI_COMMAND_BIT_8, align 4
  %22 = load i32, i32* @SPI_ADDRESS_BIT_24, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %18, i32 %19, i32 %20, i32 255, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %4
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %29 = load i32, i32* @WRITE_REG_CMD, align 4
  %30 = load i32, i32* @SPI_ADDR0, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %28, i32 %29, i32 %30, i32 255, i32 %31)
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %34 = load i32, i32* @WRITE_REG_CMD, align 4
  %35 = load i32, i32* @SPI_ADDR1, align 4
  %36 = load i32, i32* %9, align 4
  %37 = ashr i32 %36, 8
  %38 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %33, i32 %34, i32 %35, i32 255, i32 %37)
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %40 = load i32, i32* @WRITE_REG_CMD, align 4
  %41 = load i32, i32* @SPI_ADDR2, align 4
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 16
  %44 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %39, i32 %40, i32 %41, i32 255, i32 %43)
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %46 = load i32, i32* @WRITE_REG_CMD, align 4
  %47 = load i32, i32* @SPI_TRANSFER0, align 4
  %48 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %49 = load i32, i32* @SPI_CA_MODE0, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %45, i32 %46, i32 %47, i32 255, i32 %50)
  br label %60

52:                                               ; preds = %4
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %54 = load i32, i32* @WRITE_REG_CMD, align 4
  %55 = load i32, i32* @SPI_TRANSFER0, align 4
  %56 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %57 = load i32, i32* @SPI_C_MODE0, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %53, i32 %54, i32 %55, i32 255, i32 %58)
  br label %60

60:                                               ; preds = %52, %27
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %62 = load i32, i32* @CHECK_REG_CMD, align 4
  %63 = load i32, i32* @SPI_TRANSFER0, align 4
  %64 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %65 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %66 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %68 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %67, i32 0, i32 100)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %73 = call i32 @rtsx_clear_spi_error(%struct.rtsx_chip* %72)
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %75 = load i32, i32* @SPI_HW_ERR, align 4
  %76 = call i32 @spi_set_err_code(%struct.rtsx_chip* %74, i32 %75)
  %77 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %77, i32* %5, align 4
  br label %80

78:                                               ; preds = %60
  %79 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %71
  %81 = load i32, i32* %5, align 4
  ret i32 %81
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
