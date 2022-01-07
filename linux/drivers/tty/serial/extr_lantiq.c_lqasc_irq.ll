; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_lqasc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.ltq_uart_port = type { i32 }

@LTQ_ASC_IRNCR = common dso_local global i64 0, align 8
@ASC_IRNCR_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ASC_IRNCR_TIR = common dso_local global i32 0, align 4
@ASC_IRNCR_RIR = common dso_local global i32 0, align 4
@ASC_IRNCR_EIR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lqasc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lqasc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uart_port*, align 8
  %9 = alloca %struct.ltq_uart_port*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.uart_port*
  store %struct.uart_port* %11, %struct.uart_port** %8, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %13 = call %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port* %12)
  store %struct.ltq_uart_port* %13, %struct.ltq_uart_port** %9, align 8
  %14 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %9, align 8
  %15 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LTQ_ASC_IRNCR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %9, align 8
  %25 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ASC_IRNCR_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ASC_IRNCR_TIR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @lqasc_tx_int(i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ASC_IRNCR_RIR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @lqasc_rx_int(i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @ASC_IRNCR_EIR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @lqasc_err_int(i32 %58, i8* %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %32
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lqasc_tx_int(i32, i8*) #1

declare dso_local i32 @lqasc_rx_int(i32, i8*) #1

declare dso_local i32 @lqasc_err_int(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
