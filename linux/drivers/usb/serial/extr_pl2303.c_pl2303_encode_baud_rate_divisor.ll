; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_encode_baud_rate_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_encode_baud_rate_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pl2303_encode_baud_rate_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl2303_encode_baud_rate_divisor(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 384000000, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = udiv i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %27, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp uge i32 %16, 512
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %19, 7
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = lshr i32 %22, 2
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %27

26:                                               ; preds = %18
  store i32 511, i32* %6, align 4
  br label %28

27:                                               ; preds = %21
  br label %15

28:                                               ; preds = %26, %15
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  store i8 -128, i8* %30, align 1
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 1
  %35 = load i32, i32* %6, align 4
  %36 = lshr i32 %35, 8
  %37 = or i32 %34, %36
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 %43, i8* %45, align 1
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = udiv i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 1
  %51 = lshr i32 %48, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
