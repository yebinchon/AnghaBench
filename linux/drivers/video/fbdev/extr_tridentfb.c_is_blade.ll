; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_is_blade.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_is_blade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLADE3D = common dso_local global i32 0, align 4
@CYBERBLADEE4 = common dso_local global i32 0, align 4
@CYBERBLADEi7 = common dso_local global i32 0, align 4
@CYBERBLADEi7D = common dso_local global i32 0, align 4
@CYBERBLADEi1 = common dso_local global i32 0, align 4
@CYBERBLADEi1D = common dso_local global i32 0, align 4
@CYBERBLADEAi1 = common dso_local global i32 0, align 4
@CYBERBLADEAi1D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_blade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_blade(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @BLADE3D, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %34, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @CYBERBLADEE4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @CYBERBLADEi7, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @CYBERBLADEi7D, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @CYBERBLADEi1, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @CYBERBLADEi1D, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @CYBERBLADEAi1, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @CYBERBLADEAi1D, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26, %22, %18, %14, %10, %6, %1
  %35 = phi i1 [ true, %26 ], [ true, %22 ], [ true, %18 ], [ true, %14 ], [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
