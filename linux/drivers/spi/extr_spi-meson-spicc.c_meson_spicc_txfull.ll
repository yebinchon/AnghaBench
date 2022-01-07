; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_txfull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_txfull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_spicc_device = type { i64 }

@SPICC_TF = common dso_local global i32 0, align 4
@SPICC_STATREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_spicc_device*)* @meson_spicc_txfull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_spicc_txfull(%struct.meson_spicc_device* %0) #0 {
  %2 = alloca %struct.meson_spicc_device*, align 8
  store %struct.meson_spicc_device* %0, %struct.meson_spicc_device** %2, align 8
  %3 = load i32, i32* @SPICC_TF, align 4
  %4 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %2, align 8
  %5 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SPICC_STATREG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl_relaxed(i64 %8)
  %10 = call i32 @FIELD_GET(i32 %3, i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
