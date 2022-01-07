; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_synth_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_synth_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.spk_synth = type { i32 }

@is_flushing = common dso_local global i32 0, align 4
@in_escape = common dso_local global i64 0, align 8
@CTRL_flush = common dso_local global i32 0, align 4
@STAT_dma_ready = common dso_local global i32 0, align 4
@DMA_sync = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@STAT_flushing = common dso_local global i32 0, align 4
@STAT_dma_state = common dso_local global i32 0, align 4
@dma_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spk_synth*)* @synth_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synth_flush(%struct.spk_synth* %0) #0 {
  %2 = alloca %struct.spk_synth*, align 8
  %3 = alloca i32, align 4
  store %struct.spk_synth* %0, %struct.spk_synth** %2, align 8
  store i32 10, i32* %3, align 4
  %4 = load i32, i32* @is_flushing, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %63

7:                                                ; preds = %1
  store i32 4, i32* @is_flushing, align 4
  store i64 0, i64* @in_escape, align 8
  br label %8

8:                                                ; preds = %17, %7
  %9 = load i32, i32* @CTRL_flush, align 4
  %10 = call i64 @dt_ctrl(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %3, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %19

17:                                               ; preds = %12
  %18 = call i32 @udelay(i32 50)
  br label %8

19:                                               ; preds = %16, %8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* @STAT_dma_ready, align 4
  %25 = call i64 @dt_waitbit(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %33

28:                                               ; preds = %23
  %29 = call i32 @udelay(i32 50)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %20

33:                                               ; preds = %27, %20
  %34 = load i32, i32* @DMA_sync, align 4
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %36 = add nsw i64 %35, 4
  %37 = call i32 @outb_p(i32 %34, i64 %36)
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 8
  %39 = add nsw i64 %38, 4
  %40 = call i32 @outb_p(i32 0, i64 %39)
  %41 = call i32 @udelay(i32 100)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %53, %33
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 10
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = call i32 (...) @dt_getstatus()
  %47 = load i32, i32* @STAT_flushing, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %56

51:                                               ; preds = %45
  %52 = call i32 @udelay(i32 50)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %42

56:                                               ; preds = %50, %42
  %57 = call i32 (...) @dt_getstatus()
  %58 = load i32, i32* @STAT_dma_state, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* @dma_state, align 4
  %60 = load i32, i32* @STAT_dma_state, align 4
  %61 = load i32, i32* @dma_state, align 4
  %62 = xor i32 %61, %60
  store i32 %62, i32* @dma_state, align 4
  store i32 0, i32* @is_flushing, align 4
  br label %63

63:                                               ; preds = %56, %6
  ret void
}

declare dso_local i64 @dt_ctrl(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @dt_waitbit(i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @dt_getstatus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
