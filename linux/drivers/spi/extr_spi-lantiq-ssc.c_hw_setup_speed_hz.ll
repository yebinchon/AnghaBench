; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_hw_setup_speed_hz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_hw_setup_speed_hz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lantiq_ssc_spi = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"spi_clk %u, max_speed_hz %u, brt %u\0A\00", align 1
@LTQ_SPI_BRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lantiq_ssc_spi*, i32)* @hw_setup_speed_hz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_setup_speed_hz(%struct.lantiq_ssc_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.lantiq_ssc_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lantiq_ssc_spi* %0, %struct.lantiq_ssc_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %8 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_get_rate(i32 %9)
  %11 = sdiv i32 %10, 2
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = udiv i32 %17, %18
  %20 = sub i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i32, i32* %6, align 4
  %23 = icmp ugt i32 %22, 65535
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 65535, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %27 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @LTQ_SPI_BRT, align 4
  %36 = call i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi* %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
