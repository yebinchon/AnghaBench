; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_crc32_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_crc32_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bcrc32initialized = common dso_local global i32 0, align 4
@CRC32_POLY = common dso_local global i32 0, align 4
@crc32_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @crc32_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = bitcast i32* %3 to i64*
  store i64* %7, i64** %4, align 8
  %8 = load i32, i32* @bcrc32initialized, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %76

11:                                               ; preds = %0
  store i32 305397760, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %72, %11
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %75

15:                                               ; preds = %12
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = call i64 @crc32_reverseBit(i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 24
  store i32 %21, i32* %3, align 4
  store i32 8, i32* %2, align 4
  br label %22

22:                                               ; preds = %39, %15
  %23 = load i32, i32* %2, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, -2147483648
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 %30, 1
  %32 = load i32, i32* @CRC32_POLY, align 4
  %33 = xor i32 %31, %32
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 %35, 1
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i32 [ %33, %29 ], [ %36, %34 ]
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %2, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load i32*, i32** @crc32_table, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = bitcast i32* %46 to i64*
  store i64* %47, i64** %5, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @crc32_reverseBit(i64 %50)
  %52 = load i64*, i64** %5, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 %51, i64* %53, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @crc32_reverseBit(i64 %56)
  %58 = load i64*, i64** %5, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  store i64 %57, i64* %59, align 8
  %60 = load i64*, i64** %4, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @crc32_reverseBit(i64 %62)
  %64 = load i64*, i64** %5, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  store i64 %63, i64* %65, align 8
  %66 = load i64*, i64** %4, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @crc32_reverseBit(i64 %68)
  %70 = load i64*, i64** %5, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 3
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %42
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %12

75:                                               ; preds = %12
  store i32 1, i32* @bcrc32initialized, align 4
  br label %76

76:                                               ; preds = %75, %10
  ret void
}

declare dso_local i64 @crc32_reverseBit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
