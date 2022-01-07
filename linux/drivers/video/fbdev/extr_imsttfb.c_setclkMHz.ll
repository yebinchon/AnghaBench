; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_setclkMHz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_setclkMHz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imstt_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imstt_par*, i32)* @setclkMHz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setclkMHz(%struct.imstt_par* %0, i32 %1) #0 {
  %3 = alloca %struct.imstt_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.imstt_par* %0, %struct.imstt_par** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %43, %2
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %18 [
    i32 0, label %12
    i32 1, label %15
  ]

12:                                               ; preds = %10
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %10, %15, %12
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 20, %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = sdiv i32 %21, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %44

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %43

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %37, %34
  br label %43

43:                                               ; preds = %42, %33
  br label %10

44:                                               ; preds = %28
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %47 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %51 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.imstt_par*, %struct.imstt_par** %3, align 8
  %54 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
