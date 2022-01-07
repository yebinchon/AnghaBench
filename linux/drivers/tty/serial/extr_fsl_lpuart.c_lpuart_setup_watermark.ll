; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_setup_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_setup_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UARTCR2 = common dso_local global i64 0, align 8
@UARTCR2_TIE = common dso_local global i8 0, align 1
@UARTCR2_TCIE = common dso_local global i8 0, align 1
@UARTCR2_TE = common dso_local global i8 0, align 1
@UARTCR2_RIE = common dso_local global i8 0, align 1
@UARTCR2_RE = common dso_local global i8 0, align 1
@UARTPFIFO = common dso_local global i64 0, align 8
@UARTPFIFO_TXFE = common dso_local global i8 0, align 1
@UARTPFIFO_RXFE = common dso_local global i8 0, align 1
@UARTCFIFO_TXFLUSH = common dso_local global i8 0, align 1
@UARTCFIFO_RXFLUSH = common dso_local global i8 0, align 1
@UARTCFIFO = common dso_local global i64 0, align 8
@UARTSR1 = common dso_local global i64 0, align 8
@UARTSR1_RDRF = common dso_local global i32 0, align 4
@UARTDR = common dso_local global i64 0, align 8
@UARTSFIFO_RXUF = common dso_local global i8 0, align 1
@UARTSFIFO = common dso_local global i64 0, align 8
@UARTTWFIFO = common dso_local global i64 0, align 8
@UARTRWFIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart_setup_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart_setup_watermark(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  %6 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %7 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UARTCR2, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readb(i64 %11)
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %4, align 1
  %14 = load i8, i8* %4, align 1
  store i8 %14, i8* %5, align 1
  %15 = load i8, i8* @UARTCR2_TIE, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @UARTCR2_TCIE, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = load i8, i8* @UARTCR2_TE, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %19, %21
  %23 = load i8, i8* @UARTCR2_RIE, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = load i8, i8* @UARTCR2_RE, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = xor i32 %28, -1
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %4, align 1
  %34 = load i8, i8* %4, align 1
  %35 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %36 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UARTCR2, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writeb(i8 zeroext %34, i64 %40)
  %42 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %43 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UARTPFIFO, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readb(i64 %47)
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %3, align 1
  %50 = load i8, i8* %3, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @UARTPFIFO_TXFE, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %51, %53
  %55 = load i8, i8* @UARTPFIFO_RXFE, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %54, %56
  %58 = trunc i32 %57 to i8
  %59 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %60 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UARTPFIFO, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writeb(i8 zeroext %58, i64 %64)
  %66 = load i8, i8* @UARTCFIFO_TXFLUSH, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @UARTCFIFO_RXFLUSH, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %67, %69
  %71 = trunc i32 %70 to i8
  %72 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %73 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UARTCFIFO, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writeb(i8 zeroext %71, i64 %77)
  %79 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %80 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UARTSR1, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @readb(i64 %84)
  %86 = load i32, i32* @UARTSR1_RDRF, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %1
  %90 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %91 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @UARTDR, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @readb(i64 %95)
  %97 = load i8, i8* @UARTSFIFO_RXUF, align 1
  %98 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %99 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @UARTSFIFO, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writeb(i8 zeroext %97, i64 %103)
  br label %105

105:                                              ; preds = %89, %1
  %106 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %107 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @UARTTWFIFO, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writeb(i8 zeroext 0, i64 %111)
  %113 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %114 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @UARTRWFIFO, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writeb(i8 zeroext 1, i64 %118)
  %120 = load i8, i8* %5, align 1
  %121 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %122 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @UARTCR2, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writeb(i8 zeroext %120, i64 %126)
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
