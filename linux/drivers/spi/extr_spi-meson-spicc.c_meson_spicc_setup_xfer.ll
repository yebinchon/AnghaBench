; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_setup_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_setup_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_spicc_device = type { i32, i64 }
%struct.spi_transfer = type { i32 }

@SPICC_CONREG = common dso_local global i64 0, align 8
@SPICC_BITLENGTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_spicc_device*, %struct.spi_transfer*)* @meson_spicc_setup_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_spicc_setup_xfer(%struct.meson_spicc_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.meson_spicc_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.meson_spicc_device* %0, %struct.meson_spicc_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %7 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %8 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SPICC_CONREG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %6, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @meson_spicc_setup_speed(%struct.meson_spicc_device* %13, i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @SPICC_BITLENGTH_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @SPICC_BITLENGTH_MASK, align 4
  %24 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %25 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 3
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @FIELD_PREP(i32 %23, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %3, align 8
  %38 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPICC_CONREG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 %36, i64 %41)
  br label %43

43:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @meson_spicc_setup_speed(%struct.meson_spicc_device*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
