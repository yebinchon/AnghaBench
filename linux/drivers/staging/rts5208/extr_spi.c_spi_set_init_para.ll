; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_set_init_para.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_set_init_para.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.spi_info }
%struct.spi_info = type { i32, i32 }

@SPI_CLK_DIVIDER1 = common dso_local global i32 0, align 4
@SPI_CLK_DIVIDER0 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SPI_CARD = common dso_local global i32 0, align 4
@CARD_CLK_EN = common dso_local global i32 0, align 4
@SPI_CLK_EN = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@SPI_OUTPUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @spi_set_init_para to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_set_init_para(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.spi_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 0
  store %struct.spi_info* %7, %struct.spi_info** %4, align 8
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = load i32, i32* @SPI_CLK_DIVIDER1, align 4
  %10 = load %struct.spi_info*, %struct.spi_info** %4, align 8
  %11 = getelementptr inbounds %struct.spi_info, %struct.spi_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 8
  %14 = call i32 @rtsx_write_register(%struct.rtsx_chip* %8, i32 %9, i32 255, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %21 = load i32, i32* @SPI_CLK_DIVIDER0, align 4
  %22 = load %struct.spi_info*, %struct.spi_info** %4, align 8
  %23 = getelementptr inbounds %struct.spi_info, %struct.spi_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rtsx_write_register(%struct.rtsx_chip* %20, i32 %21, i32 255, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %81

30:                                               ; preds = %19
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %32 = load %struct.spi_info*, %struct.spi_info** %4, align 8
  %33 = getelementptr inbounds %struct.spi_info, %struct.spi_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @switch_clock(%struct.rtsx_chip* %31, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @STATUS_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %40, i32* %2, align 4
  br label %81

41:                                               ; preds = %30
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %43 = load i32, i32* @SPI_CARD, align 4
  %44 = call i32 @select_card(%struct.rtsx_chip* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @STATUS_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %49, i32* %2, align 4
  br label %81

50:                                               ; preds = %41
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %52 = load i32, i32* @CARD_CLK_EN, align 4
  %53 = load i32, i32* @SPI_CLK_EN, align 4
  %54 = load i32, i32* @SPI_CLK_EN, align 4
  %55 = call i32 @rtsx_write_register(%struct.rtsx_chip* %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %81

60:                                               ; preds = %50
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %62 = load i32, i32* @CARD_OE, align 4
  %63 = load i32, i32* @SPI_OUTPUT_EN, align 4
  %64 = load i32, i32* @SPI_OUTPUT_EN, align 4
  %65 = call i32 @rtsx_write_register(%struct.rtsx_chip* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %81

70:                                               ; preds = %60
  %71 = call i32 @wait_timeout(i32 10)
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %73 = call i32 @spi_init(%struct.rtsx_chip* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @STATUS_SUCCESS, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %78, i32* %2, align 4
  br label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %77, %68, %58, %48, %39, %28, %17
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @switch_clock(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @select_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @spi_init(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
