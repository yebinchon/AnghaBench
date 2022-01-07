; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_pio_writer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_pio_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_spi = type { i32, i64, i64, i32, i64 }

@ROCKCHIP_SPI_TXFLR = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_TXDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_spi*)* @rockchip_spi_pio_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_spi_pio_writer(%struct.rockchip_spi* %0) #0 {
  %2 = alloca %struct.rockchip_spi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.rockchip_spi* %0, %struct.rockchip_spi** %2, align 8
  %6 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %7 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %10 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ROCKCHIP_SPI_TXFLR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @readl_relaxed(i64 %13)
  %15 = sub nsw i64 %8, %14
  store i64 %15, i64* %3, align 8
  %16 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %17 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @min(i32 %18, i64 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %23 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 8
  br label %28

28:                                               ; preds = %64, %1
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %28
  %32 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %33 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %38 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %5, align 8
  br label %48

42:                                               ; preds = %31
  %43 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %44 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %51 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ROCKCHIP_SPI_TXDR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i64 %49, i64 %54)
  %56 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %57 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %61 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %48
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %4, align 8
  br label %28

67:                                               ; preds = %28
  ret void
}

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
