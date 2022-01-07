; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_sf_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_sf_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@SPI_COMMAND = common dso_local global i32 0, align 4
@SPI_CA_NUMBER = common dso_local global i32 0, align 4
@SPI_COMMAND_BIT_8 = common dso_local global i32 0, align 4
@SPI_ADDRESS_BIT_24 = common dso_local global i32 0, align 4
@SPI_LENGTH0 = common dso_local global i32 0, align 4
@SPI_LENGTH1 = common dso_local global i32 0, align 4
@SPI_ADDR0 = common dso_local global i32 0, align 4
@SPI_ADDR1 = common dso_local global i32 0, align 4
@SPI_ADDR2 = common dso_local global i32 0, align 4
@SPI_TRANSFER0 = common dso_local global i32 0, align 4
@SPI_TRANSFER0_START = common dso_local global i32 0, align 4
@SPI_CADO_MODE0 = common dso_local global i32 0, align 4
@SPI_CDO_MODE0 = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SPI_TRANSFER0_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*, i32, i32, i32, i32)* @sf_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sf_program(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %12 = load i32, i32* @WRITE_REG_CMD, align 4
  %13 = load i32, i32* @SPI_COMMAND, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %11, i32 %12, i32 %13, i32 255, i32 %14)
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %17 = load i32, i32* @WRITE_REG_CMD, align 4
  %18 = load i32, i32* @SPI_CA_NUMBER, align 4
  %19 = load i32, i32* @SPI_COMMAND_BIT_8, align 4
  %20 = load i32, i32* @SPI_ADDRESS_BIT_24, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %16, i32 %17, i32 %18, i32 255, i32 %21)
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %24 = load i32, i32* @WRITE_REG_CMD, align 4
  %25 = load i32, i32* @SPI_LENGTH0, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %23, i32 %24, i32 %25, i32 255, i32 %26)
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %29 = load i32, i32* @WRITE_REG_CMD, align 4
  %30 = load i32, i32* @SPI_LENGTH1, align 4
  %31 = load i32, i32* %10, align 4
  %32 = ashr i32 %31, 8
  %33 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %28, i32 %29, i32 %30, i32 255, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %5
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %38 = load i32, i32* @WRITE_REG_CMD, align 4
  %39 = load i32, i32* @SPI_ADDR0, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %37, i32 %38, i32 %39, i32 255, i32 %40)
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %43 = load i32, i32* @WRITE_REG_CMD, align 4
  %44 = load i32, i32* @SPI_ADDR1, align 4
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 8
  %47 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %42, i32 %43, i32 %44, i32 255, i32 %46)
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %49 = load i32, i32* @WRITE_REG_CMD, align 4
  %50 = load i32, i32* @SPI_ADDR2, align 4
  %51 = load i32, i32* %9, align 4
  %52 = ashr i32 %51, 16
  %53 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %48, i32 %49, i32 %50, i32 255, i32 %52)
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %55 = load i32, i32* @WRITE_REG_CMD, align 4
  %56 = load i32, i32* @SPI_TRANSFER0, align 4
  %57 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %58 = load i32, i32* @SPI_CADO_MODE0, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %54, i32 %55, i32 %56, i32 255, i32 %59)
  br label %69

61:                                               ; preds = %5
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %63 = load i32, i32* @WRITE_REG_CMD, align 4
  %64 = load i32, i32* @SPI_TRANSFER0, align 4
  %65 = load i32, i32* @SPI_TRANSFER0_START, align 4
  %66 = load i32, i32* @SPI_CDO_MODE0, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %62, i32 %63, i32 %64, i32 255, i32 %67)
  br label %69

69:                                               ; preds = %61, %36
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %71 = load i32, i32* @CHECK_REG_CMD, align 4
  %72 = load i32, i32* @SPI_TRANSFER0, align 4
  %73 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %74 = load i32, i32* @SPI_TRANSFER0_END, align 4
  %75 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %70, i32 %71, i32 %72, i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
