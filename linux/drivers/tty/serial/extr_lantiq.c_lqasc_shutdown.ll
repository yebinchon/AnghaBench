; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.ltq_uart_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*)* }

@LTQ_ASC_CON = common dso_local global i64 0, align 8
@ASCRXFCON_RXFEN = common dso_local global i32 0, align 4
@ASCRXFCON_RXFFLU = common dso_local global i32 0, align 4
@LTQ_ASC_RXFCON = common dso_local global i64 0, align 8
@ASCTXFCON_TXFEN = common dso_local global i32 0, align 4
@ASCTXFCON_TXFFLU = common dso_local global i32 0, align 4
@LTQ_ASC_TXFCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @lqasc_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lqasc_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.ltq_uart_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port* %5)
  store %struct.ltq_uart_port* %6, %struct.ltq_uart_port** %3, align 8
  %7 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %10, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = call i32 %11(%struct.uart_port* %12)
  %14 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %14, i32 0, i32 1
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LTQ_ASC_CON, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @__raw_writel(i32 0, i64 %22)
  %24 = load i32, i32* @ASCRXFCON_RXFEN, align 4
  %25 = load i32, i32* @ASCRXFCON_RXFFLU, align 4
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LTQ_ASC_RXFCON, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @asc_update_bits(i32 %24, i32 %25, i64 %30)
  %32 = load i32, i32* @ASCTXFCON_TXFEN, align 4
  %33 = load i32, i32* @ASCTXFCON_TXFFLU, align 4
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LTQ_ASC_TXFCON, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @asc_update_bits(i32 %32, i32 %33, i64 %38)
  %40 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %40, i32 0, i32 1
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IS_ERR(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %1
  %50 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %3, align 8
  %51 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @clk_disable_unprepare(i32 %52)
  br label %54

54:                                               ; preds = %49, %1
  ret void
}

declare dso_local %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @asc_update_bits(i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
