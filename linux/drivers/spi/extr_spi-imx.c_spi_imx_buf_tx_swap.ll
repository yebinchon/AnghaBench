; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_buf_tx_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_buf_tx_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, i64, i64, i32 }

@MXC_CSPITXDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_imx_data*)* @spi_imx_buf_tx_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_imx_buf_tx_swap(%struct.spi_imx_data* %0) #0 {
  %2 = alloca %struct.spi_imx_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %2, align 8
  store i32 0, i32* %4, align 4
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
  %13 = call i32 @spi_imx_buf_tx_swap_u32(%struct.spi_imx_data* %12)
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %16 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @spi_imx_bytes_per_word(i32 %17)
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %22 = call i32 @spi_imx_buf_tx_u16(%struct.spi_imx_data* %21)
  br label %61

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %3, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %30 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %35 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = mul nsw i32 8, %39
  %41 = shl i32 %38, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %45 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %33, %28
  %49 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %50 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  br label %24

53:                                               ; preds = %24
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %56 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MXC_CSPITXDATA, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  br label %61

61:                                               ; preds = %53, %20, %11
  ret void
}

declare dso_local i32 @spi_imx_buf_tx_swap_u32(%struct.spi_imx_data*) #1

declare dso_local i32 @spi_imx_bytes_per_word(i32) #1

declare dso_local i32 @spi_imx_buf_tx_u16(%struct.spi_imx_data*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
