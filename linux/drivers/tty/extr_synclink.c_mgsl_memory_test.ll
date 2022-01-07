; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_memory_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_memory_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i64, i64 }

@mgsl_memory_test.BitPatterns = internal global [7 x i64] [i64 0, i64 1431655765, i64 2863311530, i64 1717986918, i64 2576980377, i64 4294967295, i64 305419896], align 16
@SHARED_MEM_ADDRESS_SIZE = common dso_local global i32 0, align 4
@MGSL_BUS_TYPE_PCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgsl_struct*)* @mgsl_memory_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgsl_memory_test(%struct.mgsl_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgsl_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %3, align 8
  %8 = call i64 @ARRAY_SIZE(i64* getelementptr inbounds ([7 x i64], [7 x i64]* @mgsl_memory_test.BitPatterns, i64 0, i64 0))
  store i64 %8, i64* %4, align 8
  %9 = load i32, i32* @SHARED_MEM_ADDRESS_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = udiv i64 %10, 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %13 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %85

18:                                               ; preds = %1
  %19 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %20 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %7, align 8
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %40, %18
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds [7 x i64], [7 x i64]* @mgsl_memory_test.BitPatterns, i64 0, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds [7 x i64], [7 x i64]* @mgsl_memory_test.BitPatterns, i64 0, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %85

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %23

43:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %54, %43
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i64, i64* %5, align 8
  %50 = mul i64 %49, 4
  %51 = load i64*, i64** %7, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %7, align 8
  br label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %5, align 8
  br label %44

57:                                               ; preds = %44
  %58 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %59 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i64*
  store i64* %61, i64** %7, align 8
  store i64 0, i64* %5, align 8
  br label %62

62:                                               ; preds = %76, %57
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i64*, i64** %7, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = mul i64 %69, 4
  %71 = icmp ne i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %85

73:                                               ; preds = %66
  %74 = load i64*, i64** %7, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 1
  store i64* %75, i64** %7, align 8
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %5, align 8
  br label %62

79:                                               ; preds = %62
  %80 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %81 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @SHARED_MEM_ADDRESS_SIZE, align 4
  %84 = call i32 @memset(i64 %82, i32 0, i32 %83)
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %72, %38, %17
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
