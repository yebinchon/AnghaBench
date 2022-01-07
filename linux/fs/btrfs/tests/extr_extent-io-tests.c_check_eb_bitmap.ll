; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-io-tests.c_check_eb_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-io-tests.c_check_eb_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }

@BITS_PER_BYTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"bits do not match\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"offset bits do not match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.extent_buffer*, i64)* @check_eb_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_eb_bitmap(i64* %0, %struct.extent_buffer* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %60, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @BITS_PER_BYTE, align 8
  %15 = mul i64 %13, %14
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %11
  %18 = load i64, i64* %8, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = call i32 @test_bit(i64 %18, i64* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @extent_buffer_test_bit(%struct.extent_buffer* %25, i64 0, i64 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = call i32 @test_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %64

39:                                               ; preds = %17
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @BITS_PER_BYTE, align 8
  %43 = udiv i64 %41, %42
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @BITS_PER_BYTE, align 8
  %46 = urem i64 %44, %45
  %47 = call i32 @extent_buffer_test_bit(%struct.extent_buffer* %40, i64 %43, i64 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %39
  %56 = call i32 @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %11

63:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %55, %35
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @test_bit(i64, i64*) #1

declare dso_local i32 @extent_buffer_test_bit(%struct.extent_buffer*, i64, i64) #1

declare dso_local i32 @test_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
