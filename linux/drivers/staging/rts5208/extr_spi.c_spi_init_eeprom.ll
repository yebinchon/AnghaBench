; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_init_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_init_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64 }

@CLK_30 = common dso_local global i32 0, align 4
@SPI_CLK_DIVIDER1 = common dso_local global i32 0, align 4
@SPI_CLK_DIVIDER0 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SPI_CARD = common dso_local global i32 0, align 4
@CARD_CLK_EN = common dso_local global i32 0, align 4
@SPI_CLK_EN = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@SPI_OUTPUT_EN = common dso_local global i32 0, align 4
@SPI_CONTROL = common dso_local global i32 0, align 4
@CS_POLARITY_HIGH = common dso_local global i32 0, align 4
@SPI_EEPROM_AUTO = common dso_local global i32 0, align 4
@SPI_TCTL = common dso_local global i32 0, align 4
@EDO_TIMING_MASK = common dso_local global i32 0, align 4
@SAMPLE_DELAY_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @spi_init_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_init_eeprom(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 30, i32* %5, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @CLK_30, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %11, %10
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %15 = load i32, i32* @SPI_CLK_DIVIDER1, align 4
  %16 = call i32 @rtsx_write_register(%struct.rtsx_chip* %14, i32 %15, i32 255, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %91

21:                                               ; preds = %13
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %23 = load i32, i32* @SPI_CLK_DIVIDER0, align 4
  %24 = call i32 @rtsx_write_register(%struct.rtsx_chip* %22, i32 %23, i32 255, i32 39)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %91

29:                                               ; preds = %21
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @switch_clock(%struct.rtsx_chip* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @STATUS_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %37, i32* %2, align 4
  br label %91

38:                                               ; preds = %29
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %40 = load i32, i32* @SPI_CARD, align 4
  %41 = call i32 @select_card(%struct.rtsx_chip* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @STATUS_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %46, i32* %2, align 4
  br label %91

47:                                               ; preds = %38
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %49 = load i32, i32* @CARD_CLK_EN, align 4
  %50 = load i32, i32* @SPI_CLK_EN, align 4
  %51 = load i32, i32* @SPI_CLK_EN, align 4
  %52 = call i32 @rtsx_write_register(%struct.rtsx_chip* %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %91

57:                                               ; preds = %47
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %59 = load i32, i32* @CARD_OE, align 4
  %60 = load i32, i32* @SPI_OUTPUT_EN, align 4
  %61 = load i32, i32* @SPI_OUTPUT_EN, align 4
  %62 = call i32 @rtsx_write_register(%struct.rtsx_chip* %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %91

67:                                               ; preds = %57
  %68 = call i32 @wait_timeout(i32 10)
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %70 = load i32, i32* @SPI_CONTROL, align 4
  %71 = load i32, i32* @CS_POLARITY_HIGH, align 4
  %72 = load i32, i32* @SPI_EEPROM_AUTO, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @rtsx_write_register(%struct.rtsx_chip* %69, i32 %70, i32 255, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %91

79:                                               ; preds = %67
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %81 = load i32, i32* @SPI_TCTL, align 4
  %82 = load i32, i32* @EDO_TIMING_MASK, align 4
  %83 = load i32, i32* @SAMPLE_DELAY_HALF, align 4
  %84 = call i32 @rtsx_write_register(%struct.rtsx_chip* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %87, %77, %65, %55, %45, %36, %27, %19
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @switch_clock(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @select_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @wait_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
