; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mxic_spi = type { i64 }

@HC_CFG = common dso_local global i64 0, align 8
@HC_CFG_MAN_CS_EN = common dso_local global i32 0, align 4
@HC_EN_BIT = common dso_local global i32 0, align 4
@HC_EN = common dso_local global i64 0, align 8
@HC_CFG_MAN_CS_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @mxic_spi_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxic_spi_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxic_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mxic_spi* @spi_master_get_devdata(i32 %8)
  store %struct.mxic_spi* %9, %struct.mxic_spi** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %48, label %12

12:                                               ; preds = %2
  %13 = load %struct.mxic_spi*, %struct.mxic_spi** %5, align 8
  %14 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HC_CFG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = load i32, i32* @HC_CFG_MAN_CS_EN, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.mxic_spi*, %struct.mxic_spi** %5, align 8
  %22 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HC_CFG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load i32, i32* @HC_EN_BIT, align 4
  %28 = load %struct.mxic_spi*, %struct.mxic_spi** %5, align 8
  %29 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HC_EN, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.mxic_spi*, %struct.mxic_spi** %5, align 8
  %35 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HC_CFG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  %40 = load i32, i32* @HC_CFG_MAN_CS_ASSERT, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.mxic_spi*, %struct.mxic_spi** %5, align 8
  %43 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HC_CFG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  br label %70

48:                                               ; preds = %2
  %49 = load %struct.mxic_spi*, %struct.mxic_spi** %5, align 8
  %50 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @HC_CFG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  %55 = load i32, i32* @HC_CFG_MAN_CS_ASSERT, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load %struct.mxic_spi*, %struct.mxic_spi** %5, align 8
  %59 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HC_CFG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load %struct.mxic_spi*, %struct.mxic_spi** %5, align 8
  %65 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @HC_EN, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 0, i64 %68)
  br label %70

70:                                               ; preds = %48, %12
  ret void
}

declare dso_local %struct.mxic_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
