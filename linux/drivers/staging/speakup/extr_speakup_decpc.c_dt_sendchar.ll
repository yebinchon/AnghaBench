; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_dt_sendchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_dt_sendchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@dt_stat = common dso_local global i32 0, align 4
@STAT_rr_char = common dso_local global i32 0, align 4
@DMA_single_in = common dso_local global i8 0, align 1
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@STAT_dma_state = common dso_local global i32 0, align 4
@dma_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @dt_sendchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_sendchar(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = call i32 (...) @dt_wait_dma()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %25

7:                                                ; preds = %1
  %8 = load i32, i32* @dt_stat, align 4
  %9 = load i32, i32* @STAT_rr_char, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 -2, i32* %2, align 4
  br label %25

13:                                               ; preds = %7
  %14 = load i8, i8* @DMA_single_in, align 1
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %16 = add nsw i64 %15, 4
  %17 = call i32 @outb_p(i8 signext %14, i64 %16)
  %18 = load i8, i8* %3, align 1
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %20 = add nsw i64 %19, 4
  %21 = call i32 @outb_p(i8 signext %18, i64 %20)
  %22 = load i32, i32* @STAT_dma_state, align 4
  %23 = load i32, i32* @dma_state, align 4
  %24 = xor i32 %23, %22
  store i32 %24, i32* @dma_state, align 4
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %13, %12, %6
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @dt_wait_dma(...) #1

declare dso_local i32 @outb_p(i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
