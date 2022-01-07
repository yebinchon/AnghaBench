; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_synth_readbuf_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_synth_readbuf_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 (i32)* }

@speakup_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@UART_LSR = common dso_local global i64 0, align 8
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i64 0, align 8
@synth = common dso_local global %struct.TYPE_3__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @synth_readbuf_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synth_readbuf_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %7)
  br label %9

9:                                                ; preds = %17, %2
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 1), align 8
  %11 = load i64, i64* @UART_LSR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @inb_p(i64 %12)
  %14 = load i32, i32* @UART_LSR_DR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 1), align 8
  %19 = load i64, i64* @UART_RX, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @inb_p(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @synth, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 %24(i32 %25)
  br label %9

27:                                               ; preds = %9
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %28)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
