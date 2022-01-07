; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-hspi.c_hspi_hw_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-hspi.c_hspi_hw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hspi_priv = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }

@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"speed %d/%d\0A\00", align 1
@SPCR = common dso_local global i32 0, align 4
@SPSR = common dso_local global i32 0, align 4
@SPSCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hspi_priv*, %struct.spi_message*, %struct.spi_transfer*)* @hspi_hw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hspi_hw_setup(%struct.hspi_priv* %0, %struct.spi_message* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.hspi_priv*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hspi_priv* %0, %struct.hspi_priv** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %15 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %16 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %15, i32 0, i32 0
  %17 = load %struct.spi_device*, %struct.spi_device** %16, align 8
  store %struct.spi_device* %17, %struct.spi_device** %7, align 8
  %18 = load %struct.hspi_priv*, %struct.hspi_priv** %4, align 8
  %19 = getelementptr inbounds %struct.hspi_priv, %struct.hspi_priv* %18, i32 0, i32 1
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %8, align 8
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %59, %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp sle i32 %22, 63
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  %25 = load %struct.hspi_priv*, %struct.hspi_priv** %4, align 8
  %26 = getelementptr inbounds %struct.hspi_priv, %struct.hspi_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_get_rate(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = sdiv i32 %33, 128
  store i32 %34, i32* %11, align 4
  br label %38

35:                                               ; preds = %24
  %36 = load i32, i32* %11, align 4
  %37 = sdiv i32 %36, 16
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 31
  %41 = add nsw i32 %40, 1
  %42 = mul nsw i32 %41, 2
  %43 = load i32, i32* %11, align 4
  %44 = sdiv i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %46 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @abs(i32 %49) #3
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %54, %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %21

62:                                               ; preds = %21
  %63 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SPI_CPHA, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, 128
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SPI_CPOL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, 64
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %72
  %83 = load %struct.device*, %struct.device** %8, align 8
  %84 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %85 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @dev_dbg(%struct.device* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.hspi_priv*, %struct.hspi_priv** %4, align 8
  %90 = load i32, i32* @SPCR, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @hspi_write(%struct.hspi_priv* %89, i32 %90, i32 %91)
  %93 = load %struct.hspi_priv*, %struct.hspi_priv** %4, align 8
  %94 = load i32, i32* @SPSR, align 4
  %95 = call i32 @hspi_write(%struct.hspi_priv* %93, i32 %94, i32 0)
  %96 = load %struct.hspi_priv*, %struct.hspi_priv** %4, align 8
  %97 = load i32, i32* @SPSCR, align 4
  %98 = call i32 @hspi_write(%struct.hspi_priv* %96, i32 %97, i32 33)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @hspi_write(%struct.hspi_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
