; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp-avail.c_get_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp-avail.c_get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64)* @get_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_val(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = add i64 %9, %10
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %12, 8
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  br label %16

16:                                               ; preds = %20, %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = shl i64 %21, 8
  store i64 %22, i64* %7, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %8, align 8
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %8, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load i64, i64* %6, align 8
  %34 = sub i64 8, %33
  %35 = mul i64 8, %34
  %36 = load i64, i64* %7, align 8
  %37 = shl i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  ret i64 %38
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
