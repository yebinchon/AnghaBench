; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_lpspi_data = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CFGR1_MASTER = common dso_local global i32 0, align 4
@CFGR1_PINCFG = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@CFGR1_PCSPOL = common dso_local global i32 0, align 4
@IMX7ULP_CFGR1 = common dso_local global i64 0, align 8
@IMX7ULP_CR = common dso_local global i64 0, align 8
@CR_RRF = common dso_local global i32 0, align 4
@CR_RTF = common dso_local global i32 0, align 4
@CR_MEN = common dso_local global i32 0, align 4
@DER_TDDE = common dso_local global i32 0, align 4
@DER_RDDE = common dso_local global i32 0, align 4
@IMX7ULP_DER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_lpspi_data*)* @fsl_lpspi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_config(%struct.fsl_lpspi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_lpspi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fsl_lpspi_data* %0, %struct.fsl_lpspi_data** %3, align 8
  %6 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %12 = call i32 @fsl_lpspi_set_bitrate(%struct.fsl_lpspi_data* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %85

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %20 = call i32 @fsl_lpspi_set_watermark(%struct.fsl_lpspi_data* %19)
  %21 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @CFGR1_MASTER, align 4
  store i32 %26, i32* %4, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @CFGR1_PINCFG, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %31 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SPI_CS_HIGH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @CFGR1_PCSPOL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %44 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IMX7ULP_CFGR1, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %50 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IMX7ULP_CR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @CR_RRF, align 4
  %56 = load i32, i32* @CR_RTF, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CR_MEN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %64 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IMX7ULP_CR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  store i32 0, i32* %4, align 4
  %69 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %70 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %41
  %74 = load i32, i32* @DER_TDDE, align 4
  %75 = load i32, i32* @DER_RDDE, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %41
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %3, align 8
  %80 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IMX7ULP_DER, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %77, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @fsl_lpspi_set_bitrate(%struct.fsl_lpspi_data*) #1

declare dso_local i32 @fsl_lpspi_set_watermark(%struct.fsl_lpspi_data*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
