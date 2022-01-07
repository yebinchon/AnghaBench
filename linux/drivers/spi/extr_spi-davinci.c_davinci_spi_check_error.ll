; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_check_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_check_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_spi = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@SPIFLG_TIMEOUT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SPI Time-out Error\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SPIFLG_DESYNC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"SPI Desynchronization Error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SPIFLG_BITERR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"SPI Bit error\0A\00", align 1
@SPI_VERSION_2 = common dso_local global i64 0, align 8
@SPIFLG_DLEN_ERR_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"SPI Data Length Error\0A\00", align 1
@SPIFLG_PARERR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"SPI Parity Error\0A\00", align 1
@SPIFLG_OVRRUN_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"SPI Data Overrun error\0A\00", align 1
@SPIFLG_BUF_INIT_ACTIVE_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"SPI Buffer Init Active\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_spi*, i32)* @davinci_spi_check_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_spi_check_error(%struct.davinci_spi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.davinci_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.davinci_spi* %0, %struct.davinci_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.davinci_spi*, %struct.davinci_spi** %4, align 8
  %8 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SPIFLG_TIMEOUT_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ETIMEDOUT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %91

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SPIFLG_DESYNC_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SPIFLG_BITERR_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %91

43:                                               ; preds = %33
  %44 = load %struct.davinci_spi*, %struct.davinci_spi** %4, align 8
  %45 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SPI_VERSION_2, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SPIFLG_DLEN_ERR_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %91

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SPIFLG_PARERR_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %91

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SPIFLG_OVRRUN_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %91

79:                                               ; preds = %69
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SPIFLG_BUF_INIT_ACTIVE_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %91

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %43
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %84, %74, %64, %54, %38, %28, %18
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
