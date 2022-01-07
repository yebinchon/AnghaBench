; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_buf_rx_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_buf_rx_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, i64, i64, i32 }

@MXC_CSPIRXDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_imx_data*)* @spi_imx_buf_rx_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_imx_buf_rx_swap(%struct.spi_imx_data* %0) #0 {
  %2 = alloca %struct.spi_imx_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %2, align 8
  %5 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %6 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = srem i32 %7, 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %13 = call i32 @spi_imx_buf_rx_swap_u32(%struct.spi_imx_data* %12)
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %16 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @spi_imx_bytes_per_word(i32 %17)
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %22 = call i32 @spi_imx_buf_rx_u16(%struct.spi_imx_data* %21)
  br label %58

23:                                               ; preds = %14
  %24 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %25 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MXC_CSPIRXDATA, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %53, %23
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %3, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %36 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = mul nsw i32 8, %41
  %43 = ashr i32 %40, %42
  %44 = and i32 %43, 255
  %45 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %46 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  store i32 %44, i32* %48, align 4
  %49 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %50 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %39, %34
  %54 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %55 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  br label %30

58:                                               ; preds = %11, %20, %30
  ret void
}

declare dso_local i32 @spi_imx_buf_rx_swap_u32(%struct.spi_imx_data*) #1

declare dso_local i32 @spi_imx_bytes_per_word(i32) #1

declare dso_local i32 @spi_imx_buf_rx_u16(%struct.spi_imx_data*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
