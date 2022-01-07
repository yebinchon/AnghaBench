; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_spi_setup_word_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_spi_setup_word_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_geni_master = type { i32, %struct.geni_se }
%struct.geni_se = type { i64 }

@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SE_SPI_WORD_LEN = common dso_local global i64 0, align 8
@WORD_LEN_MSK = common dso_local global i32 0, align 4
@MIN_WORD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_geni_master*, i32, i32)* @spi_setup_word_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_setup_word_len(%struct.spi_geni_master* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.spi_geni_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.geni_se*, align 8
  %10 = alloca i32, align 4
  store %struct.spi_geni_master* %0, %struct.spi_geni_master** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SPI_LSB_FIRST, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 1
  store i32 %16, i32* %8, align 4
  %17 = load %struct.spi_geni_master*, %struct.spi_geni_master** %4, align 8
  %18 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %17, i32 0, i32 1
  store %struct.geni_se* %18, %struct.geni_se** %9, align 8
  %19 = load %struct.geni_se*, %struct.geni_se** %9, align 8
  %20 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SE_SPI_WORD_LEN, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.spi_geni_master*, %struct.spi_geni_master** %4, align 8
  %26 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = urem i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load %struct.spi_geni_master*, %struct.spi_geni_master** %4, align 8
  %33 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = udiv i32 %34, %35
  store i32 %36, i32* %7, align 4
  br label %38

37:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* @WORD_LEN_MSK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MIN_WORD_LEN, align 4
  %45 = sub i32 %43, %44
  %46 = load i32, i32* @WORD_LEN_MSK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load %struct.spi_geni_master*, %struct.spi_geni_master** %4, align 8
  %51 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %50, i32 0, i32 1
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @geni_se_config_packing(%struct.geni_se* %51, i32 %52, i32 %53, i32 %54, i32 1, i32 1)
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.geni_se*, %struct.geni_se** %9, align 8
  %58 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SE_SPI_WORD_LEN, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @geni_se_config_packing(%struct.geni_se*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
