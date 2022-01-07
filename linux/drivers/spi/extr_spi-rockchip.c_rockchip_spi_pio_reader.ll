; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_pio_reader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_pio_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_spi = type { i64, i32, i64, i64 }

@ROCKCHIP_SPI_RXFLR = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_RXFTLR = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_RXDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_spi*)* @rockchip_spi_pio_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_spi_pio_reader(%struct.rockchip_spi* %0) #0 {
  %2 = alloca %struct.rockchip_spi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rockchip_spi* %0, %struct.rockchip_spi** %2, align 8
  %7 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %8 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ROCKCHIP_SPI_RXFLR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i64 @readl_relaxed(i64 %11)
  store i64 %12, i64* %3, align 8
  %13 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %14 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %1
  %21 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %22 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ROCKCHIP_SPI_RXFTLR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @readl_relaxed(i64 %25)
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %4, align 8
  %33 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %34 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %31, %20
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %42 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %84, %39
  %44 = load i64, i64* %3, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %43
  %47 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %48 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ROCKCHIP_SPI_RXDR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i64 @readl_relaxed(i64 %51)
  store i64 %52, i64* %6, align 8
  %53 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %54 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %84

58:                                               ; preds = %46
  %59 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %60 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %66 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i64*
  store i64 %64, i64* %68, align 8
  br label %75

69:                                               ; preds = %58
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %72 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i64*
  store i64 %70, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %77 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %81 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %75, %57
  %85 = load i64, i64* %3, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %3, align 8
  br label %43

87:                                               ; preds = %43
  ret void
}

declare dso_local i64 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
