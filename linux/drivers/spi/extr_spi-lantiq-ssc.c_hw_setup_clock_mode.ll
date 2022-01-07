; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_hw_setup_clock_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_hw_setup_clock_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lantiq_ssc_spi = type { i32 }

@SPI_CPHA = common dso_local global i32 0, align 4
@LTQ_SPI_CON_PH = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@LTQ_SPI_CON_PO = common dso_local global i32 0, align 4
@LTQ_SPI_CON_IDLE = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@LTQ_SPI_CON_HB = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@LTQ_SPI_CON_LB = common dso_local global i32 0, align 4
@LTQ_SPI_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lantiq_ssc_spi*, i32)* @hw_setup_clock_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_setup_clock_mode(%struct.lantiq_ssc_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.lantiq_ssc_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lantiq_ssc_spi* %0, %struct.lantiq_ssc_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SPI_CPHA, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @LTQ_SPI_CON_PH, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @LTQ_SPI_CON_PH, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SPI_CPOL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @LTQ_SPI_CON_PO, align 4
  %26 = load i32, i32* @LTQ_SPI_CON_IDLE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %36

30:                                               ; preds = %19
  %31 = load i32, i32* @LTQ_SPI_CON_PO, align 4
  %32 = load i32, i32* @LTQ_SPI_CON_IDLE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SPI_LSB_FIRST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @LTQ_SPI_CON_HB, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @LTQ_SPI_CON_HB, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @SPI_LOOP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @LTQ_SPI_CON_LB, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @LTQ_SPI_CON_LB, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @LTQ_SPI_CON, align 4
  %67 = call i32 @lantiq_ssc_maskl(%struct.lantiq_ssc_spi* %63, i32 %64, i32 %65, i32 %66)
  ret void
}

declare dso_local i32 @lantiq_ssc_maskl(%struct.lantiq_ssc_spi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
