; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.uniphier_spi_priv = type { i64 }

@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SSI_CKS_CKPHS = common dso_local global i32 0, align 4
@SSI_CKS_CKDLY = common dso_local global i32 0, align 4
@SSI_FPS_FSTRT = common dso_local global i32 0, align 4
@SSI_CKS_CKINIT = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SSI_FPS_FSPOL = common dso_local global i32 0, align 4
@SSI_CKS = common dso_local global i64 0, align 8
@SSI_FPS = common dso_local global i64 0, align 8
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SSI_TXWDS_TDTF_MASK = common dso_local global i32 0, align 4
@SSI_TXWDS = common dso_local global i64 0, align 8
@SSI_RXWDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @uniphier_spi_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_spi_set_mode(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.uniphier_spi_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.uniphier_spi_priv* @spi_master_get_devdata(i32 %8)
  store %struct.uniphier_spi_priv* %9, %struct.uniphier_spi_priv** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SPI_CPOL, align 4
  %14 = load i32, i32* @SPI_CPHA, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  switch i32 %16, label %32 [
    i32 131, label %17
    i32 130, label %21
    i32 129, label %23
    i32 128, label %28
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @SSI_CKS_CKPHS, align 4
  %19 = load i32, i32* @SSI_CKS_CKDLY, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %32

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %22 = load i32, i32* @SSI_FPS_FSTRT, align 4
  store i32 %22, i32* %5, align 4
  br label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @SSI_CKS_CKINIT, align 4
  %25 = load i32, i32* @SSI_CKS_CKDLY, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @SSI_FPS_FSTRT, align 4
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @SSI_CKS_CKPHS, align 4
  %30 = load i32, i32* @SSI_CKS_CKINIT, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %1, %28, %23, %21, %17
  %33 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SPI_CS_HIGH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @SSI_FPS_FSPOL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %3, align 8
  %46 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SSI_CKS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %3, align 8
  %53 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SSI_FPS, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  store i32 0, i32* %4, align 4
  %58 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SPI_LSB_FIRST, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %43
  %65 = load i32, i32* @SSI_TXWDS_TDTF_MASK, align 4
  %66 = call i32 @FIELD_PREP(i32 %65, i32 1)
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %43
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %3, align 8
  %72 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SSI_TXWDS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %3, align 8
  %79 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SSI_RXWDS, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  ret void
}

declare dso_local %struct.uniphier_spi_priv* @spi_master_get_devdata(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
