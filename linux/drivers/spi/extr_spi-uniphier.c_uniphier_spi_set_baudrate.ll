; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_set_baudrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_set_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.uniphier_spi_priv = type { i64, i32 }

@SSI_CKS = common dso_local global i64 0, align 8
@SSI_CKS_CKRAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @uniphier_spi_set_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_spi_set_baudrate(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uniphier_spi_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.uniphier_spi_priv* @spi_master_get_devdata(i32 %10)
  store %struct.uniphier_spi_priv* %11, %struct.uniphier_spi_priv** %5, align 8
  %12 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %13 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_get_rate(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @DIV_ROUND_UP(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @round_up(i32 %18, i32 2)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %21 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SSI_CKS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @SSI_CKS_CKRAT_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SSI_CKS_CKRAT_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %5, align 8
  %37 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SSI_CKS, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  ret void
}

declare dso_local %struct.uniphier_spi_priv* @spi_master_get_devdata(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
