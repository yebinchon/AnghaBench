; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@SPI_CONTROL = common dso_local global i32 0, align 4
@CS_POLARITY_LOW = common dso_local global i32 0, align 4
@DTO_MSB_FIRST = common dso_local global i32 0, align 4
@SPI_MASTER = common dso_local global i32 0, align 4
@SPI_MODE0 = common dso_local global i32 0, align 4
@SPI_AUTO = common dso_local global i32 0, align 4
@SPI_TCTL = common dso_local global i32 0, align 4
@EDO_TIMING_MASK = common dso_local global i32 0, align 4
@SAMPLE_DELAY_HALF = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @spi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_init(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = load i32, i32* @SPI_CONTROL, align 4
  %7 = load i32, i32* @CS_POLARITY_LOW, align 4
  %8 = load i32, i32* @DTO_MSB_FIRST, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SPI_MASTER, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SPI_MODE0, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SPI_AUTO, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @rtsx_write_register(%struct.rtsx_chip* %5, i32 %6, i32 255, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %23 = load i32, i32* @SPI_TCTL, align 4
  %24 = load i32, i32* @EDO_TIMING_MASK, align 4
  %25 = load i32, i32* @SAMPLE_DELAY_HALF, align 4
  %26 = call i32 @rtsx_write_register(%struct.rtsx_chip* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29, %19
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
