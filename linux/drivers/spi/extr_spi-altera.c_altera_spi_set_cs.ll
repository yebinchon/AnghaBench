; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-altera.c_altera_spi_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.altera_spi = type { i64, i32 }

@ALTERA_SPI_CONTROL_SSO_MSK = common dso_local global i32 0, align 4
@ALTERA_SPI_CONTROL = common dso_local global i64 0, align 8
@ALTERA_SPI_SLAVE_SEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @altera_spi_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_spi_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.altera_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.altera_spi* @altera_spi_to_hw(%struct.spi_device* %6)
  store %struct.altera_spi* %7, %struct.altera_spi** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load i32, i32* @ALTERA_SPI_CONTROL_SSO_MSK, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.altera_spi*, %struct.altera_spi** %5, align 8
  %14 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.altera_spi*, %struct.altera_spi** %5, align 8
  %18 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.altera_spi*, %struct.altera_spi** %5, align 8
  %21 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ALTERA_SPI_CONTROL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.altera_spi*, %struct.altera_spi** %5, align 8
  %27 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ALTERA_SPI_SLAVE_SEL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  br label %57

32:                                               ; preds = %2
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load %struct.altera_spi*, %struct.altera_spi** %5, align 8
  %38 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ALTERA_SPI_SLAVE_SEL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load i32, i32* @ALTERA_SPI_CONTROL_SSO_MSK, align 4
  %44 = load %struct.altera_spi*, %struct.altera_spi** %5, align 8
  %45 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.altera_spi*, %struct.altera_spi** %5, align 8
  %49 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.altera_spi*, %struct.altera_spi** %5, align 8
  %52 = getelementptr inbounds %struct.altera_spi, %struct.altera_spi* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ALTERA_SPI_CONTROL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %32, %10
  ret void
}

declare dso_local %struct.altera_spi* @altera_spi_to_hw(%struct.spi_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
