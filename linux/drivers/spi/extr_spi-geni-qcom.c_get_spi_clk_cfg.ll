; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_get_spi_clk_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_get_spi_clk_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_geni_master = type { i32, i32, %struct.geni_se }
%struct.geni_se = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed(%d) to find src clk for %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"req %u=>%u sclk %lu, idx %d, div %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"clk_set_rate failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.spi_geni_master*, i32*, i32*)* @get_spi_clk_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_spi_clk_cfg(i32 %0, %struct.spi_geni_master* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_geni_master*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.geni_se*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.spi_geni_master* %1, %struct.spi_geni_master** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %15 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %14, i32 0, i32 2
  store %struct.geni_se* %15, %struct.geni_se** %12, align 8
  %16 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %17 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %16, i32 0, i32 2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %20 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %18, %21
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @geni_se_clk_freq_match(%struct.geni_se* %17, i32 %22, i32* %23, i64* %10, i32 0)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %29 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %5, align 4
  br label %80

35:                                               ; preds = %4
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %38 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul i32 %39, %40
  %42 = call i32 @DIV_ROUND_UP(i64 %36, i32 %41)
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %46 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = mul i32 %47, %49
  %51 = zext i32 %50 to i64
  %52 = udiv i64 %44, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %55 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i64, i64* %10, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i64 %59, i32 %61, i32 %63)
  %65 = load %struct.geni_se*, %struct.geni_se** %12, align 8
  %66 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @clk_set_rate(i32 %67, i64 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %35
  %73 = load %struct.spi_geni_master*, %struct.spi_geni_master** %7, align 8
  %74 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %35
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %27
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @geni_se_clk_freq_match(%struct.geni_se*, i32, i32*, i64*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
