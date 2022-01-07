; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750le_deWait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750le_deWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DE_STATE2_DE_STATUS_BUSY = common dso_local global i32 0, align 4
@DE_STATE2_DE_FIFO_EMPTY = common dso_local global i32 0, align 4
@DE_STATE2_DE_MEM_FIFO_EMPTY = common dso_local global i32 0, align 4
@DE_STATE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_sm750le_deWait() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 268435456, i32* %2, align 4
  %5 = load i32, i32* @DE_STATE2_DE_STATUS_BUSY, align 4
  %6 = load i32, i32* @DE_STATE2_DE_FIFO_EMPTY, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @DE_STATE2_DE_MEM_FIFO_EMPTY, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %25, %0
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %2, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i32, i32* @DE_STATE2, align 4
  %16 = call i32 @peek32(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @DE_STATE2_DE_FIFO_EMPTY, align 4
  %21 = load i32, i32* @DE_STATE2_DE_MEM_FIFO_EMPTY, align 4
  %22 = or i32 %20, %21
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %27

25:                                               ; preds = %14
  br label %10

26:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @peek32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
