; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_buf_rx_swap_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_buf_rx_swap_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, i64, i32, i64 }

@MXC_CSPIRXDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_imx_data*)* @spi_imx_buf_rx_swap_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_imx_buf_rx_swap_u32(%struct.spi_imx_data* %0) #0 {
  %2 = alloca %struct.spi_imx_data*, align 8
  %3 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %2, align 8
  %4 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %5 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MXC_CSPIRXDATA, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %11 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %17 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32 %15, i32* %19, align 4
  %20 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %21 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 4
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %26 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 8
  ret void
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
