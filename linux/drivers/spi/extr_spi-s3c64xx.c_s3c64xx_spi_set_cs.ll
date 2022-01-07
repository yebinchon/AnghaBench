; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c64xx.c_s3c64xx_spi_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c64xx.c_s3c64xx_spi_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.s3c64xx_spi_driver_data = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@S3C64XX_SPI_QUIRK_CS_AUTO = common dso_local global i32 0, align 4
@S3C64XX_SPI_SLAVE_SEL = common dso_local global i64 0, align 8
@S3C64XX_SPI_SLAVE_AUTO = common dso_local global i32 0, align 4
@S3C64XX_SPI_SLAVE_NSC_CNT_2 = common dso_local global i32 0, align 4
@S3C64XX_SPI_SLAVE_SIG_INACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @s3c64xx_spi_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c64xx_spi_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c64xx_spi_driver_data*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.s3c64xx_spi_driver_data* @spi_master_get_devdata(i32 %9)
  store %struct.s3c64xx_spi_driver_data* %10, %struct.s3c64xx_spi_driver_data** %5, align 8
  %11 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %12 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %75

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %18
  %22 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %23 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @S3C64XX_SPI_QUIRK_CS_AUTO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %21
  %31 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %32 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @S3C64XX_SPI_SLAVE_SEL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 0, i64 %35)
  br label %56

37:                                               ; preds = %21
  %38 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %39 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @S3C64XX_SPI_SLAVE_SEL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @S3C64XX_SPI_SLAVE_AUTO, align 4
  %45 = load i32, i32* @S3C64XX_SPI_SLAVE_NSC_CNT_2, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %51 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S3C64XX_SPI_SLAVE_SEL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  br label %56

56:                                               ; preds = %37, %30
  br label %75

57:                                               ; preds = %18
  %58 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %59 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @S3C64XX_SPI_QUIRK_CS_AUTO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @S3C64XX_SPI_SLAVE_SIG_INACT, align 4
  %68 = load %struct.s3c64xx_spi_driver_data*, %struct.s3c64xx_spi_driver_data** %5, align 8
  %69 = getelementptr inbounds %struct.s3c64xx_spi_driver_data, %struct.s3c64xx_spi_driver_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @S3C64XX_SPI_SLAVE_SEL, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  br label %74

74:                                               ; preds = %66, %57
  br label %75

75:                                               ; preds = %17, %74, %56
  ret void
}

declare dso_local %struct.s3c64xx_spi_driver_data* @spi_master_get_devdata(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
