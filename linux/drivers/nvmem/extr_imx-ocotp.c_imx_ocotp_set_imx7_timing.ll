; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp.c_imx_ocotp_set_imx7_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp.c_imx_ocotp_set_imx7_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocotp_priv = type { i64, i32 }

@DEF_FSOURCE = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@DEF_STROBE_PROG = common dso_local global i32 0, align 4
@IMX_OCOTP_ADDR_TIMING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocotp_priv*)* @imx_ocotp_set_imx7_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_ocotp_set_imx7_timing(%struct.ocotp_priv* %0) #0 {
  %2 = alloca %struct.ocotp_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocotp_priv* %0, %struct.ocotp_priv** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ocotp_priv*, %struct.ocotp_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @clk_get_rate(i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @DEF_FSOURCE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* @NSEC_PER_SEC, align 4
  %16 = call i32 @DIV_ROUND_UP_ULL(i32 %14, i32 %15)
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = load i64, i64* %3, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @DEF_STROBE_PROG, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* @NSEC_PER_SEC, align 4
  %23 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %21, i32 %22)
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 4095
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 %27, 12
  %29 = and i32 %28, 1044480
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ocotp_priv*, %struct.ocotp_priv** %2, align 8
  %34 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IMX_OCOTP_ADDR_TIMING, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
