; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_initialsetup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-s3c24xx.c_s3c24xx_spi_initialsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_spi = type { i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)*, i32 }

@S3C2410_SPPRE = common dso_local global i64 0, align 8
@SPPIN_DEFAULT = common dso_local global i32 0, align 4
@S3C2410_SPPIN = common dso_local global i64 0, align 8
@SPCON_DEFAULT = common dso_local global i32 0, align 4
@S3C2410_SPCON = common dso_local global i64 0, align 8
@s3c24xx_spi_gpiocs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_spi*)* @s3c24xx_spi_initialsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_spi_initialsetup(%struct.s3c24xx_spi* %0) #0 {
  %2 = alloca %struct.s3c24xx_spi*, align 8
  store %struct.s3c24xx_spi* %0, %struct.s3c24xx_spi** %2, align 8
  %3 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %2, align 8
  %4 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @clk_enable(i32 %5)
  %7 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %2, align 8
  %8 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @S3C2410_SPPRE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writeb(i32 255, i64 %11)
  %13 = load i32, i32* @SPPIN_DEFAULT, align 4
  %14 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %2, align 8
  %15 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @S3C2410_SPPIN, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writeb(i32 %13, i64 %18)
  %20 = load i32, i32* @SPCON_DEFAULT, align 4
  %21 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %2, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @S3C2410_SPCON, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writeb(i32 %20, i64 %25)
  %27 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %2, align 8
  %28 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %62

31:                                               ; preds = %1
  %32 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %2, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @s3c24xx_spi_gpiocs, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %2, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @gpio_direction_output(i32 %42, i32 1)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %2, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.TYPE_2__*, i32)* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %2, align 8
  %53 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %55, align 8
  %57 = load %struct.s3c24xx_spi*, %struct.s3c24xx_spi** %2, align 8
  %58 = getelementptr inbounds %struct.s3c24xx_spi, %struct.s3c24xx_spi* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i32 %56(%struct.TYPE_2__* %59, i32 1)
  br label %61

61:                                               ; preds = %51, %44
  br label %62

62:                                               ; preds = %61, %1
  ret void
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
