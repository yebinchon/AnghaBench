; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_spi_priv = type { i32, i64, i64 }

@XLP_SPI_CMD_TX_MASK = common dso_local global i32 0, align 4
@XLP_SPI_CMD_RX_MASK = common dso_local global i32 0, align 4
@XLP_SPI_CMD_CONT = common dso_local global i32 0, align 4
@XLP_SPI_XFR_BITCNT_SHIFT = common dso_local global i32 0, align 4
@XLP_SPI_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlp_spi_priv*, i32, i32)* @xlp_spi_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_spi_send_cmd(%struct.xlp_spi_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xlp_spi_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xlp_spi_priv* %0, %struct.xlp_spi_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %4, align 8
  %9 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @XLP_SPI_CMD_TX_MASK, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %4, align 8
  %18 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @XLP_SPI_CMD_RX_MASK, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @XLP_SPI_CMD_CONT, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 8
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* @XLP_SPI_XFR_BITCNT_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %4, align 8
  %41 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %4, align 8
  %42 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @XLP_SPI_CMD, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @xlp_spi_reg_write(%struct.xlp_spi_priv* %40, i32 %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @xlp_spi_reg_write(%struct.xlp_spi_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
