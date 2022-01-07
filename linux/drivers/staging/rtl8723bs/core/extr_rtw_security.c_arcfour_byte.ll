; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_arcfour_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_arcfour_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc4context = type { i64*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.arc4context*)* @arcfour_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arcfour_byte(%struct.arc4context* %0) #0 {
  %2 = alloca %struct.arc4context*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.arc4context* %0, %struct.arc4context** %2, align 8
  %8 = load %struct.arc4context*, %struct.arc4context** %2, align 8
  %9 = getelementptr inbounds %struct.arc4context, %struct.arc4context* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %7, align 8
  %11 = load %struct.arc4context*, %struct.arc4context** %2, align 8
  %12 = getelementptr inbounds %struct.arc4context, %struct.arc4context* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  %15 = and i32 %14, 255
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %3, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.arc4context*, %struct.arc4context** %2, align 8
  %23 = getelementptr inbounds %struct.arc4context, %struct.arc4context* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  %26 = and i64 %25, 255
  store i64 %26, i64* %4, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %3, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.arc4context*, %struct.arc4context** %2, align 8
  %34 = getelementptr inbounds %struct.arc4context, %struct.arc4context* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.arc4context*, %struct.arc4context** %2, align 8
  %37 = getelementptr inbounds %struct.arc4context, %struct.arc4context* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %42, i64* %45, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %47, %48
  %50 = and i64 %49, 255
  %51 = getelementptr inbounds i64, i64* %46, i64 %50
  %52 = load i64, i64* %51, align 8
  ret i64 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
