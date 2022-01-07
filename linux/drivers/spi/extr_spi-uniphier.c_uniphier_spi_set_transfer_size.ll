; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_set_transfer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_set_transfer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.uniphier_spi_priv = type { i64 }

@SSI_TXWDS = common dso_local global i64 0, align 8
@SSI_TXWDS_WDLEN_MASK = common dso_local global i32 0, align 4
@SSI_TXWDS_DTLEN_MASK = common dso_local global i32 0, align 4
@SSI_RXWDS = common dso_local global i64 0, align 8
@SSI_RXWDS_DTLEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @uniphier_spi_set_transfer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_spi_set_transfer_size(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uniphier_spi_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.uniphier_spi_priv* @spi_master_get_devdata(i32 %9)
  store %struct.uniphier_spi_priv* %10, %struct.uniphier_spi_priv** %5, align 8
  %11 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %12 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SSI_TXWDS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @SSI_TXWDS_WDLEN_MASK, align 4
  %18 = load i32, i32* @SSI_TXWDS_DTLEN_MASK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @SSI_TXWDS_WDLEN_MASK, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @FIELD_PREP(i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @SSI_TXWDS_DTLEN_MASK, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @FIELD_PREP(i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %35 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SSI_TXWDS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %41 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SSI_RXWDS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @SSI_RXWDS_DTLEN_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @SSI_RXWDS_DTLEN_MASK, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @FIELD_PREP(i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %57 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SSI_RXWDS, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  ret void
}

declare dso_local %struct.uniphier_spi_priv* @spi_master_get_devdata(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
