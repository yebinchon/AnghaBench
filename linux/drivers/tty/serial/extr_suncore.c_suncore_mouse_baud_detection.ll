; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_suncore.c_suncore_mouse_baud_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_suncore.c_suncore_mouse_baud_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@suncore_mouse_baud_detection.mouse_got_break = internal global i32 0, align 4
@suncore_mouse_baud_detection.ctr = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @suncore_mouse_baud_detection(i8 zeroext %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* @suncore_mouse_baud_detection.mouse_got_break, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @suncore_mouse_baud_detection.ctr, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %28

15:                                               ; preds = %11, %8
  store i32 0, i32* @suncore_mouse_baud_detection.ctr, align 4
  store i32 1, i32* @suncore_mouse_baud_detection.mouse_got_break, align 4
  store i32 2, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @suncore_mouse_baud_detection.mouse_got_break, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* @suncore_mouse_baud_detection.ctr, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @suncore_mouse_baud_detection.ctr, align 4
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 135
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* @suncore_mouse_baud_detection.mouse_got_break, align 4
  br label %26

26:                                               ; preds = %25, %19
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %15, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
