; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_spk_stop_serial_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_spk_stop_serial_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@speakup_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@synth = common dso_local global %struct.TYPE_4__* null, align 8
@UART_IER = common dso_local global i64 0, align 8
@serstate = common dso_local global %struct.TYPE_6__* null, align 8
@synth_readbuf_handler = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spk_stop_serial_interrupt() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @speakup_info, i32 0, i32 0), align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %21

4:                                                ; preds = %0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synth, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  br label %21

10:                                               ; preds = %4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @speakup_info, i32 0, i32 0), align 8
  %12 = load i64, i64* @UART_IER, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outb(i32 0, i64 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @serstate, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @synth_readbuf_handler, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @free_irq(i32 %17, i8* %19)
  br label %21

21:                                               ; preds = %10, %9, %3
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @free_irq(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
