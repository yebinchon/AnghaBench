; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_get_fifo_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_get_fifo_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_spi = type { i64 }

@ROCKCHIP_SPI_TXFTLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_spi*)* @get_fifo_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fifo_len(%struct.rockchip_spi* %0) #0 {
  %2 = alloca %struct.rockchip_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.rockchip_spi* %0, %struct.rockchip_spi** %2, align 8
  store i32 2, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 32
  br i1 %6, label %7, label %28

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %10 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ROCKCHIP_SPI_TXFTLR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel_relaxed(i32 %8, i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %17 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ROCKCHIP_SPI_TXFTLR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  %22 = icmp ne i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  br label %28

24:                                               ; preds = %7
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %4

28:                                               ; preds = %23, %4
  %29 = load %struct.rockchip_spi*, %struct.rockchip_spi** %2, align 8
  %30 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ROCKCHIP_SPI_TXFTLR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 0, i64 %33)
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 31
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 0, %37 ], [ %39, %38 ]
  ret i32 %41
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
