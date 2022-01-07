; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dectlk.c_read_buff_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dectlk.c_read_buff_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_buff_add.ind = internal global i32 -1, align 4
@flush_lock = common dso_local global i32 0, align 4
@is_flushing = common dso_local global i64 0, align 8
@flush = common dso_local global i32 0, align 4
@xoff = common dso_local global i32 0, align 4
@lastind = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @read_buff_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_buff_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @flush_lock, i64 %7)
  store i64 0, i64* @is_flushing, align 8
  %9 = call i32 @wake_up_interruptible(i32* @flush)
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_unlock_irqrestore(i32* @flush_lock, i64 %10)
  br label %50

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 19
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* @xoff, align 4
  br label %49

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 17
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* @xoff, align 4
  br label %48

20:                                               ; preds = %16
  %21 = call i64 @is_indnum(i32* %2)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* @read_buff_add.ind, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* @read_buff_add.ind, align 4
  br label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @read_buff_add.ind, align 4
  %30 = mul nsw i32 %29, 10
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* @read_buff_add.ind, align 4
  br label %33

33:                                               ; preds = %28, %26
  br label %47

34:                                               ; preds = %20
  %35 = load i32, i32* %2, align 4
  %36 = icmp sgt i32 %35, 31
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 127
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @read_buff_add.ind, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @read_buff_add.ind, align 4
  store i32 %44, i32* @lastind, align 4
  br label %45

45:                                               ; preds = %43, %40
  store i32 -1, i32* @read_buff_add.ind, align 4
  br label %46

46:                                               ; preds = %45, %37, %34
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %47, %19
  br label %49

49:                                               ; preds = %48, %15
  br label %50

50:                                               ; preds = %49, %6
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @is_indnum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
