; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_depth_to_dst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_depth_to_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DST_8BPP = common dso_local global i32 0, align 4
@DST_15BPP = common dso_local global i32 0, align 4
@DST_16BPP = common dso_local global i32 0, align 4
@DST_24BPP = common dso_local global i32 0, align 4
@DST_32BPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @depth_to_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @depth_to_dst(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 8
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @DST_8BPP, align 4
  store i32 %7, i32* %2, align 4
  br label %35

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 15
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @DST_15BPP, align 4
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @DST_16BPP, align 4
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 24
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @DST_24BPP, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = icmp sle i32 %24, 32
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @DST_32BPP, align 4
  store i32 %27, i32* %2, align 4
  br label %35

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %26, %21, %16, %11, %6
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
