; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili9320.c_ili9320_write_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili9320.c_ili9320_write_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ili9320 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ili9320_spi }
%struct.ili9320_spi = type { i8*, i8*, i8, i32, i32 }

@ILI9320_SPI_INDEX = common dso_local global i8 0, align 1
@ILI9320_SPI_WRITE = common dso_local global i8 0, align 1
@ILI9320_SPI_DATA = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ili9320*, i32, i32)* @ili9320_write_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9320_write_spi(%struct.ili9320* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ili9320*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ili9320_spi*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.ili9320* %0, %struct.ili9320** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %11 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ili9320_spi* %12, %struct.ili9320_spi** %7, align 8
  %13 = load %struct.ili9320_spi*, %struct.ili9320_spi** %7, align 8
  %14 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.ili9320_spi*, %struct.ili9320_spi** %7, align 8
  %17 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  %19 = load %struct.ili9320_spi*, %struct.ili9320_spi** %7, align 8
  %20 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %19, i32 0, i32 2
  %21 = load i8, i8* %20, align 8
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @ILI9320_SPI_INDEX, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = load i8, i8* @ILI9320_SPI_WRITE, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %29, i8* %31, align 1
  %32 = load i32, i32* %5, align 4
  %33 = lshr i32 %32, 8
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %34, i8* %36, align 1
  %37 = load i32, i32* %5, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %38, i8* %40, align 1
  %41 = load %struct.ili9320_spi*, %struct.ili9320_spi** %7, align 8
  %42 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @ILI9320_SPI_DATA, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %44, %46
  %48 = load i8, i8* @ILI9320_SPI_WRITE, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %47, %49
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %51, i8* %53, align 1
  %54 = load i32, i32* %6, align 4
  %55 = lshr i32 %54, 8
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %56, i8* %58, align 1
  %59 = load i32, i32* %6, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8 %60, i8* %62, align 1
  %63 = load %struct.ili9320_spi*, %struct.ili9320_spi** %7, align 8
  %64 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ili9320_spi*, %struct.ili9320_spi** %7, align 8
  %67 = getelementptr inbounds %struct.ili9320_spi, %struct.ili9320_spi* %66, i32 0, i32 3
  %68 = call i32 @spi_sync(i32 %65, i32* %67)
  ret i32 %68
}

declare dso_local i32 @spi_sync(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
