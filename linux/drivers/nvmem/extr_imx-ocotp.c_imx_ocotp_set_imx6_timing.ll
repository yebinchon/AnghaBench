; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp.c_imx_ocotp_set_imx6_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp.c_imx_ocotp_set_imx6_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocotp_priv = type { i64, i32 }

@TIMING_RELAX_NS = common dso_local global i64 0, align 8
@TIMING_STROBE_READ_NS = common dso_local global i64 0, align 8
@TIMING_STROBE_PROG_US = common dso_local global i64 0, align 8
@IMX_OCOTP_ADDR_TIMING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocotp_priv*)* @imx_ocotp_set_imx6_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_ocotp_set_imx6_timing(%struct.ocotp_priv* %0) #0 {
  %2 = alloca %struct.ocotp_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ocotp_priv* %0, %struct.ocotp_priv** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.ocotp_priv*, %struct.ocotp_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @clk_get_rate(i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @TIMING_RELAX_NS, align 8
  %14 = mul i64 %12, %13
  %15 = call i32 @DIV_ROUND_UP(i64 %14, i32 1000000000)
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @TIMING_STROBE_READ_NS, align 8
  %20 = mul i64 %18, %19
  %21 = call i32 @DIV_ROUND_UP(i64 %20, i32 1000000000)
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  %25 = mul i64 2, %24
  %26 = sub i64 %25, 1
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @TIMING_STROBE_PROG_US, align 8
  %31 = mul i64 %29, %30
  %32 = call i64 @DIV_ROUND_CLOSEST(i64 %31, i32 1000000)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  %35 = mul i64 2, %34
  %36 = sub i64 %35, 1
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load %struct.ocotp_priv*, %struct.ocotp_priv** %2, align 8
  %40 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IMX_OCOTP_ADDR_TIMING, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  %45 = and i32 %44, 264241152
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = and i64 %47, 4095
  %49 = load i64, i64* %7, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = shl i64 %51, 12
  %53 = and i64 %52, 61440
  %54 = load i64, i64* %7, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %4, align 8
  %57 = shl i64 %56, 16
  %58 = and i64 %57, 4128768
  %59 = load i64, i64* %7, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.ocotp_priv*, %struct.ocotp_priv** %2, align 8
  %63 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IMX_OCOTP_ADDR_TIMING, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i64 %61, i64 %66)
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
