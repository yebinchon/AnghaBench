; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }
%struct.ltq_uart_port = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*)* }

@ASCCLC_DISS = common dso_local global i32 0, align 4
@ASCCLC_RMCMASK = common dso_local global i32 0, align 4
@ASCCLC_RMCOFFSET = common dso_local global i32 0, align 4
@LTQ_ASC_CLC = common dso_local global i64 0, align 8
@LTQ_ASC_PISEL = common dso_local global i64 0, align 8
@TXFIFO_FL = common dso_local global i32 0, align 4
@ASCTXFCON_TXFITLOFF = common dso_local global i32 0, align 4
@ASCTXFCON_TXFITLMASK = common dso_local global i32 0, align 4
@ASCTXFCON_TXFEN = common dso_local global i32 0, align 4
@ASCTXFCON_TXFFLU = common dso_local global i32 0, align 4
@LTQ_ASC_TXFCON = common dso_local global i64 0, align 8
@RXFIFO_FL = common dso_local global i32 0, align 4
@ASCRXFCON_RXFITLOFF = common dso_local global i32 0, align 4
@ASCRXFCON_RXFITLMASK = common dso_local global i32 0, align 4
@ASCRXFCON_RXFEN = common dso_local global i32 0, align 4
@ASCRXFCON_RXFFLU = common dso_local global i32 0, align 4
@LTQ_ASC_RXFCON = common dso_local global i64 0, align 8
@ASCCON_M_8ASYNC = common dso_local global i32 0, align 4
@ASCCON_FEN = common dso_local global i32 0, align 4
@ASCCON_TOEN = common dso_local global i32 0, align 4
@ASCCON_ROEN = common dso_local global i32 0, align 4
@LTQ_ASC_CON = common dso_local global i64 0, align 8
@ASC_IRNREN_RX = common dso_local global i32 0, align 4
@ASC_IRNREN_ERR = common dso_local global i32 0, align 4
@ASC_IRNREN_TX = common dso_local global i32 0, align 4
@LTQ_ASC_IRNREN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @lqasc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lqasc_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.ltq_uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port* %7)
  store %struct.ltq_uart_port* %8, %struct.ltq_uart_port** %4, align 8
  %9 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %4, align 8
  %10 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @IS_ERR(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %4, align 8
  %16 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_prepare_enable(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %4, align 8
  %21 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_get_rate(i32 %22)
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %26, i32 0, i32 1
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i32, i32* @ASCCLC_DISS, align 4
  %31 = load i32, i32* @ASCCLC_RMCMASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ASCCLC_RMCOFFSET, align 4
  %34 = shl i32 1, %33
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LTQ_ASC_CLC, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @asc_update_bits(i32 %32, i32 %34, i64 %39)
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LTQ_ASC_PISEL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @__raw_writel(i32 0, i64 %45)
  %47 = load i32, i32* @TXFIFO_FL, align 4
  %48 = load i32, i32* @ASCTXFCON_TXFITLOFF, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @ASCTXFCON_TXFITLMASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @ASCTXFCON_TXFEN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ASCTXFCON_TXFFLU, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LTQ_ASC_TXFCON, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @__raw_writel(i32 %55, i64 %60)
  %62 = load i32, i32* @RXFIFO_FL, align 4
  %63 = load i32, i32* @ASCRXFCON_RXFITLOFF, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* @ASCRXFCON_RXFITLMASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @ASCRXFCON_RXFEN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ASCRXFCON_RXFFLU, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @LTQ_ASC_RXFCON, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @__raw_writel(i32 %70, i64 %75)
  %77 = call i32 (...) @wmb()
  %78 = load i32, i32* @ASCCON_M_8ASYNC, align 4
  %79 = load i32, i32* @ASCCON_FEN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @ASCCON_TOEN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @ASCCON_ROEN, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @LTQ_ASC_CON, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @asc_update_bits(i32 0, i32 %84, i64 %89)
  %91 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %4, align 8
  %92 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %91, i32 0, i32 1
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %4, align 8
  %96 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %98, align 8
  %100 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %101 = call i32 %99(%struct.uart_port* %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %19
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %119

106:                                              ; preds = %19
  %107 = load i32, i32* @ASC_IRNREN_RX, align 4
  %108 = load i32, i32* @ASC_IRNREN_ERR, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @ASC_IRNREN_TX, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %113 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @LTQ_ASC_IRNREN, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @__raw_writel(i32 %111, i64 %116)
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %106, %104
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asc_update_bits(i32, i32, i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
