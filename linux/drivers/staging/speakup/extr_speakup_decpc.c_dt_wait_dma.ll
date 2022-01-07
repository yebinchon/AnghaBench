; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_dt_wait_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_dt_wait_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dma_state = common dso_local global i32 0, align 4
@STAT_dma_ready = common dso_local global i32 0, align 4
@STAT_dma_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dt_wait_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_wait_dma() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 100, i32* %2, align 4
  %4 = load i32, i32* @dma_state, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @STAT_dma_ready, align 4
  %6 = call i32 @dt_waitbit(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %27

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %21, %9
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %2, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = call i32 (...) @dt_getstatus()
  %16 = load i32, i32* @STAT_dma_state, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %27

21:                                               ; preds = %14
  %22 = call i32 @udelay(i32 50)
  br label %10

23:                                               ; preds = %10
  %24 = call i32 (...) @dt_getstatus()
  %25 = load i32, i32* @STAT_dma_state, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* @dma_state, align 4
  store i32 1, i32* %1, align 4
  br label %27

27:                                               ; preds = %23, %20, %8
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @dt_waitbit(i32) #1

declare dso_local i32 @dt_getstatus(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
