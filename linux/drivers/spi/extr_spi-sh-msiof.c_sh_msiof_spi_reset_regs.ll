; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_reset_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_reset_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_msiof_spi_priv = type { i64 }

@CTR_TXRST = common dso_local global i32 0, align 4
@CTR_RXRST = common dso_local global i32 0, align 4
@CTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_msiof_spi_priv*)* @sh_msiof_spi_reset_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_msiof_spi_reset_regs(%struct.sh_msiof_spi_priv* %0) #0 {
  %2 = alloca %struct.sh_msiof_spi_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sh_msiof_spi_priv* %0, %struct.sh_msiof_spi_priv** %2, align 8
  %5 = load i32, i32* @CTR_TXRST, align 4
  %6 = load i32, i32* @CTR_RXRST, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %2, align 8
  %9 = load i64, i64* @CTR, align 8
  %10 = call i32 @sh_msiof_read(%struct.sh_msiof_spi_priv* %8, i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %2, align 8
  %15 = load i64, i64* @CTR, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %14, i64 %15, i32 %16)
  %18 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %2, align 8
  %19 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CTR, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @readl_poll_timeout_atomic(i64 %22, i32 %23, i32 %29, i32 1, i32 100)
  ret void
}

declare dso_local i32 @sh_msiof_read(%struct.sh_msiof_spi_priv*, i64) #1

declare dso_local i32 @sh_msiof_write(%struct.sh_msiof_spi_priv*, i64, i32) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
