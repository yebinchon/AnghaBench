; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_buf_tx_swap_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_buf_tx_swap_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, i64, i32, i64 }

@MXC_CSPITXDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_imx_data*)* @spi_imx_buf_tx_swap_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_imx_buf_tx_swap_u32(%struct.spi_imx_data* %0) #0 {
  %2 = alloca %struct.spi_imx_data*, align 8
  %3 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %5 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %10 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %15 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 4
  store i64 %17, i64* %15, align 8
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %20 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %27 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MXC_CSPITXDATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
