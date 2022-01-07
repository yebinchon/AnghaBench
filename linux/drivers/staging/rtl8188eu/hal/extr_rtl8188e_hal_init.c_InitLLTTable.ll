; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_InitLLTTable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_InitLLTTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@_FAIL = common dso_local global i64 0, align 8
@LAST_ENTRY_OF_TX_PKT_BUFFER = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @InitLLTTable(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @_FAIL, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @LAST_ENTRY_OF_TX_PKT_BUFFER, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = call i64 @rtw_iol_applied(%struct.adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @iol_InitLLTTable(%struct.adapter* %15, i32 %16)
  store i64 %17, i64* %6, align 8
  br label %81

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i64 @_LLTWrite(%struct.adapter* %25, i32 %26, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %3, align 8
  br label %83

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i64 @_LLTWrite(%struct.adapter* %40, i32 %42, i32 255)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  br label %83

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %67, %49
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.adapter*, %struct.adapter** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i64 @_LLTWrite(%struct.adapter* %56, i32 %57, i32 %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* %3, align 8
  br label %83

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %51

70:                                               ; preds = %51
  %71 = load %struct.adapter*, %struct.adapter** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @_LLTWrite(%struct.adapter* %71, i32 %72, i32 %73)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i64, i64* %6, align 8
  store i64 %79, i64* %3, align 8
  br label %83

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %14
  %82 = load i64, i64* %6, align 8
  store i64 %82, i64* %3, align 8
  br label %83

83:                                               ; preds = %81, %78, %64, %47, %33
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

declare dso_local i64 @rtw_iol_applied(%struct.adapter*) #1

declare dso_local i64 @iol_InitLLTTable(%struct.adapter*, i32) #1

declare dso_local i64 @_LLTWrite(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
