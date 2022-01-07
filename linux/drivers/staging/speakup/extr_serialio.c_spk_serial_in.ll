; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_spk_serial_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_spk_serial_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SPK_SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UART_LSR = common dso_local global i64 0, align 8
@UART_LSR_DR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [35 x i8] c"time out while waiting for input.\0A\00", align 1
@UART_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @spk_serial_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @spk_serial_in() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SPK_SERIAL_TIMEOUT, align 4
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %21, %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %6 = load i64, i64* @UART_LSR, align 8
  %7 = add nsw i64 %5, %6
  %8 = call zeroext i8 @inb_p(i64 %7)
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @UART_LSR_DR, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %2, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i8 -1, i8* %1, align 1
  br label %28

21:                                               ; preds = %15
  %22 = call i32 @udelay(i32 1)
  br label %4

23:                                               ; preds = %4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %25 = load i64, i64* @UART_RX, align 8
  %26 = add nsw i64 %24, %25
  %27 = call zeroext i8 @inb_p(i64 %26)
  store i8 %27, i8* %1, align 1
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i8, i8* %1, align 1
  ret i8 %29
}

declare dso_local zeroext i8 @inb_p(i64) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
