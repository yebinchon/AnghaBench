; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_Efuse_GetCurrentSize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_Efuse_GetCurrentSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@HW_VAR_EFUSE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adapter*)* @Efuse_GetCurrentSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Efuse_GetCurrentSize(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = load i32, i32* @HW_VAR_EFUSE_BYTES, align 4
  %10 = bitcast i64* %3 to i32*
  %11 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %8, i32 %9, i32* %10)
  br label %12

12:                                               ; preds = %70, %40, %1
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @efuse_OneByteRead(%struct.adapter* %13, i64 %14, i32* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @AVAILABLE_EFUSE_ADDR(i64 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ false, %12 ], [ %20, %17 ]
  br i1 %22, label %23, label %71

23:                                               ; preds = %21
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 255
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 31
  %29 = icmp eq i32 %28, 15
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* %3, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %3, align 8
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @efuse_OneByteRead(%struct.adapter* %34, i64 %35, i32* %6)
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 15
  %39 = icmp eq i32 %38, 15
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i64, i64* %3, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %12

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 224
  %46 = ashr i32 %45, 5
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 240
  %49 = ashr i32 %48, 1
  %50 = or i32 %46, %49
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 15
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %43
  br label %60

54:                                               ; preds = %26
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 4
  %57 = and i32 %56, 15
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 15
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %53
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @Efuse_CalculateWordCnts(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i64, i64* %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %63, %66
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %70

69:                                               ; preds = %23
  br label %71

70:                                               ; preds = %60
  br label %12

71:                                               ; preds = %69, %21
  %72 = load %struct.adapter*, %struct.adapter** %2, align 8
  %73 = load i32, i32* @HW_VAR_EFUSE_BYTES, align 4
  %74 = bitcast i64* %3 to i32*
  %75 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %72, i32 %73, i32* %74)
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i64 @efuse_OneByteRead(%struct.adapter*, i64, i32*) #1

declare dso_local i64 @AVAILABLE_EFUSE_ADDR(i64) #1

declare dso_local i32 @Efuse_CalculateWordCnts(i32) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
