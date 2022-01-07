; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_agm1264k-fl.c_construct_line_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_agm1264k-fl.c_construct_line_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fbtft_par*, i32*, i16*, i32, i32, i32)* @construct_line_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct_line_bitmap(%struct.fbtft_par* %0, i32* %1, i16* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fbtft_par*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %7, align 8
  store i32* %1, i32** %8, align 8
  store i16* %2, i16** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %13, align 4
  br label %17

17:                                               ; preds = %58, %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %50, %21
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load i16*, i16** %9, align 8
  %27 = load i32, i32* %12, align 4
  %28 = mul nsw i32 %27, 8
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %28, %29
  %31 = load %struct.fbtft_par*, %struct.fbtft_par** %7, align 8
  %32 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %30, %36
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %26, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = icmp ne i16 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %25
  %45 = load i32, i32* %14, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %44, %25
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load i32, i32* %15, align 4
  %55 = xor i32 %54, -1
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %17

61:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
