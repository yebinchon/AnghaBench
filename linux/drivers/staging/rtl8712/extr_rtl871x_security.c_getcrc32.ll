; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_getcrc32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_getcrc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bcrc32initialized = common dso_local global i32 0, align 4
@crc32_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64)* @getcrc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getcrc32(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @bcrc32initialized, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 (...) @crc32_init()
  br label %11

11:                                               ; preds = %9, %2
  store i64 4294967295, i64* %6, align 8
  %12 = load i64*, i64** %3, align 8
  store i64* %12, i64** %5, align 8
  br label %13

13:                                               ; preds = %28, %11
  %14 = load i64, i64* %4, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i64*, i64** @crc32_table, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = xor i64 %18, %20
  %22 = and i64 %21, 255
  %23 = getelementptr inbounds i64, i64* %17, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = ashr i64 %25, 8
  %27 = xor i64 %24, %26
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %16
  %29 = load i64*, i64** %5, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %4, align 8
  br label %13

33:                                               ; preds = %13
  %34 = load i64, i64* %6, align 8
  %35 = xor i64 %34, -1
  ret i64 %35
}

declare dso_local i32 @crc32_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
