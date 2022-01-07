; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_setup_ufcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_setup_ufcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32 }

@UFCR = common dso_local global i32 0, align 4
@UFCR_RFDIV = common dso_local global i32 0, align 4
@UFCR_DCEDTE = common dso_local global i32 0, align 4
@UFCR_TXTL_SHF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*, i8, i8)* @imx_uart_setup_ufcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_setup_ufcr(%struct.imx_port* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.imx_port*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %9 = load i32, i32* @UFCR, align 4
  %10 = call i32 @imx_uart_readl(%struct.imx_port* %8, i32 %9)
  %11 = load i32, i32* @UFCR_RFDIV, align 4
  %12 = load i32, i32* @UFCR_DCEDTE, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @UFCR_TXTL_SHF, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 %16, %18
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %19, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @UFCR, align 4
  %28 = call i32 @imx_uart_writel(%struct.imx_port* %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
