; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c64xx.c_s3c64xx_spi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c64xx.c_s3c64xx_spi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c64xx_spi_driver_data = type { i64, %struct.spi_master* }
%struct.spi_master = type { i32 }

@S3C64XX_SPI_STATUS = common dso_local global i64 0, align 8
@S3C64XX_SPI_ST_RX_OVERRUN_ERR = common dso_local global i32 0, align 4
@S3C64XX_SPI_PND_RX_OVERRUN_CLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"RX overrun\0A\00", align 1
@S3C64XX_SPI_ST_RX_UNDERRUN_ERR = common dso_local global i32 0, align 4
@S3C64XX_SPI_PND_RX_UNDERRUN_CLR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"RX underrun\0A\00", align 1
@S3C64XX_SPI_ST_TX_OVERRUN_ERR = common dso_local global i32 0, align 4
@S3C64XX_SPI_PND_TX_OVERRUN_CLR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"TX overrun\0A\00", align 1
@S3C64XX_SPI_ST_TX_UNDERRUN_ERR = common dso_local global i32 0, align 4
@S3C64XX_SPI_PND_TX_UNDERRUN_CLR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"TX underrun\0A\00", align 1
@S3C64XX_SPI_PENDING_CLR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c64xx_spi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_spi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s3c64xx_spi_driver_data*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.s3c64xx_spi_driver_data*
  store %struct.s3c64xx_spi_driver_data* %10, %struct.s3c64xx_spi_driver_data** %5, align 8
  %11 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %12 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %11, i32 0, i32 1
  %13 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  store %struct.spi_master* %13, %struct.spi_master** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %15 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @S3C64XX_SPI_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @S3C64XX_SPI_ST_RX_OVERRUN_ERR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @S3C64XX_SPI_PND_RX_OVERRUN_CLR, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %27 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @S3C64XX_SPI_ST_RX_UNDERRUN_ERR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* @S3C64XX_SPI_PND_RX_UNDERRUN_CLR, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %39 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @S3C64XX_SPI_ST_TX_OVERRUN_ERR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @S3C64XX_SPI_PND_TX_OVERRUN_CLR, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %51 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @S3C64XX_SPI_ST_TX_UNDERRUN_ERR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* @S3C64XX_SPI_PND_TX_UNDERRUN_CLR, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %63 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %68 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @S3C64XX_SPI_PENDING_CLR, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %74 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @S3C64XX_SPI_PENDING_CLR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 0, i64 %77)
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %79
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
