; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_spk_serial_in_nowait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_spk_serial_in_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UART_LSR = common dso_local global i64 0, align 8
@UART_LSR_DR = common dso_local global i8 0, align 1
@UART_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @spk_serial_in_nowait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @spk_serial_in_nowait() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %4 = load i64, i64* @UART_LSR, align 8
  %5 = add nsw i64 %3, %4
  %6 = call zeroext i8 @inb_p(i64 %5)
  store i8 %6, i8* %2, align 1
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* @UART_LSR_DR, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  store i8 0, i8* %1, align 1
  br label %19

14:                                               ; preds = %0
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %16 = load i64, i64* @UART_RX, align 8
  %17 = add nsw i64 %15, %16
  %18 = call zeroext i8 @inb_p(i64 %17)
  store i8 %18, i8* %1, align 1
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i8, i8* %1, align 1
  ret i8 %20
}

declare dso_local zeroext i8 @inb_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
