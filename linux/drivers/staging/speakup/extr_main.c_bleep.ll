; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_bleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_bleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16, i32, i32 }

@bleep.vals = internal constant [12 x i16] [i16 350, i16 370, i16 392, i16 414, i16 440, i16 466, i16 491, i16 523, i16 554, i16 587, i16 619, i16 659], align 16
@spk_bleep_time = common dso_local global i32 0, align 4
@spk_unprocessed_sound = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bleep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @spk_bleep_time, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = srem i32 %6, 12
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [12 x i16], [12 x i16]* @bleep.vals, i64 0, i64 %8
  %10 = load i16, i16* %9, align 2
  store i16 %10, i16* %3, align 2
  %11 = load i32, i32* %2, align 4
  %12 = icmp sgt i32 %11, 11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = sdiv i32 %14, 12
  %16 = shl i32 1, %15
  %17 = load i16, i16* %3, align 2
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %18, %16
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %3, align 2
  br label %21

21:                                               ; preds = %13, %1
  %22 = load i16, i16* %3, align 2
  store i16 %22, i16* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spk_unprocessed_sound, i32 0, i32 0), align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @msecs_to_jiffies(i32 %23)
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spk_unprocessed_sound, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spk_unprocessed_sound, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
