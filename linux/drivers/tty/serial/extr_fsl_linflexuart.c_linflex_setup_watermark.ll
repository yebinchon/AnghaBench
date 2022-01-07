; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_setup_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_setup_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@LINIER = common dso_local global i64 0, align 8
@LINFLEXD_LINIER_DRIE = common dso_local global i64 0, align 8
@LINFLEXD_LINIER_DTIE = common dso_local global i64 0, align 8
@UARTCR = common dso_local global i64 0, align 8
@LINFLEXD_UARTCR_RXEN = common dso_local global i64 0, align 8
@LINFLEXD_UARTCR_TXEN = common dso_local global i64 0, align 8
@LINFLEXD_LINCR1_BF = common dso_local global i64 0, align 8
@LINFLEXD_LINCR1_MME = common dso_local global i64 0, align 8
@LINFLEXD_LINCR1_INIT = common dso_local global i64 0, align 8
@LINCR1 = common dso_local global i64 0, align 8
@LINSR = common dso_local global i64 0, align 8
@LINFLEXD_LINSR_LINS_MASK = common dso_local global i64 0, align 8
@LINFLEXD_LINSR_LINS_INITMODE = common dso_local global i64 0, align 8
@LINFLEXD_UARTCR_UART = common dso_local global i64 0, align 8
@LINFLEXD_UARTCR_WL0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @linflex_setup_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linflex_setup_watermark(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LINIER, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @readl(i64 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* @LINFLEXD_LINIER_DRIE, align 8
  %13 = load i64, i64* @LINFLEXD_LINIER_DTIE, align 8
  %14 = or i64 %12, %13
  %15 = xor i64 %14, -1
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LINIER, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i64 %18, i64 %23)
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UARTCR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @readl(i64 %29)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* @LINFLEXD_UARTCR_RXEN, align 8
  %32 = load i64, i64* @LINFLEXD_UARTCR_TXEN, align 8
  %33 = or i64 %31, %32
  %34 = xor i64 %33, -1
  %35 = load i64, i64* %3, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @UARTCR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i64 %37, i64 %42)
  %44 = load i64, i64* @LINFLEXD_LINCR1_BF, align 8
  %45 = load i64, i64* @LINFLEXD_LINCR1_MME, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* @LINFLEXD_LINCR1_INIT, align 8
  %48 = or i64 %46, %47
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LINCR1, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i64 %49, i64 %54)
  br label %56

56:                                               ; preds = %67, %1
  %57 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LINSR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i64 @readl(i64 %61)
  %63 = load i64, i64* @LINFLEXD_LINSR_LINS_MASK, align 8
  %64 = and i64 %62, %63
  %65 = load i64, i64* @LINFLEXD_LINSR_LINS_INITMODE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %56

68:                                               ; preds = %56
  %69 = load i64, i64* @LINFLEXD_UARTCR_UART, align 8
  %70 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @UARTCR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i64 %69, i64 %74)
  %76 = load i64, i64* @LINFLEXD_UARTCR_RXEN, align 8
  %77 = load i64, i64* @LINFLEXD_UARTCR_TXEN, align 8
  %78 = or i64 %76, %77
  %79 = load i64, i64* @LINFLEXD_UARTCR_WL0, align 8
  %80 = or i64 %78, %79
  %81 = load i64, i64* @LINFLEXD_UARTCR_UART, align 8
  %82 = or i64 %80, %81
  store i64 %82, i64* %3, align 8
  %83 = load i64, i64* %3, align 8
  %84 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %85 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @UARTCR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i64 %83, i64 %88)
  %90 = load i64, i64* @LINFLEXD_LINCR1_INIT, align 8
  %91 = xor i64 %90, -1
  %92 = load i64, i64* %5, align 8
  %93 = and i64 %92, %91
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* %5, align 8
  %95 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LINCR1, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i64 %94, i64 %99)
  %101 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @LINIER, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i64 @readl(i64 %105)
  store i64 %106, i64* %4, align 8
  %107 = load i64, i64* @LINFLEXD_LINIER_DRIE, align 8
  %108 = load i64, i64* %4, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %4, align 8
  %110 = load i64, i64* @LINFLEXD_LINIER_DTIE, align 8
  %111 = load i64, i64* %4, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %4, align 8
  %113 = load i64, i64* %4, align 8
  %114 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @LINIER, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i64 %113, i64 %118)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
