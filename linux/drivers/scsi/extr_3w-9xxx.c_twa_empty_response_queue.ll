; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_empty_response_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_empty_response_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TW_STATUS_RESPONSE_QUEUE_EMPTY = common dso_local global i32 0, align 4
@TW_MAX_RESPONSE_DRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @twa_empty_response_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_empty_response_queue(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @TW_STATUS_REG_ADDR(i32* %7)
  %9 = call i32 @readl(i32 %8)
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %21, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @TW_STATUS_RESPONSE_QUEUE_EMPTY, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TW_MAX_RESPONSE_DRAIN, align 4
  %18 = icmp slt i32 %16, %17
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ false, %10 ], [ %18, %15 ]
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @TW_RESPONSE_QUEUE_REG_ADDR(i32* %22)
  %24 = call i32 @readl(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @TW_STATUS_REG_ADDR(i32* %25)
  %27 = call i32 @readl(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %10

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @TW_MAX_RESPONSE_DRAIN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %36

35:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @TW_STATUS_REG_ADDR(i32*) #1

declare dso_local i32 @TW_RESPONSE_QUEUE_REG_ADDR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
