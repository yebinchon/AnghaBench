; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com.c_rtw_hal_update_sta_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com.c_rtw_hal_update_sta_rate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sta_info = type { i32*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32* }

@HW_VAR_RF_TYPE = common dso_local global i32 0, align 4
@RF_2T2R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_hal_update_sta_rate_mask(%struct.adapter* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %10 = icmp ne %struct.sta_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %98

12:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %39, %12
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %17
  %27 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  %35 = call i32 @rtw_get_bit_value_from_ieee_value(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %26, %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %13

42:                                               ; preds = %13
  %43 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %89

48:                                               ; preds = %42
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = load i32, i32* @HW_VAR_RF_TYPE, align 4
  %51 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %49, i32 %50, i32* %6)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @RF_2T2R, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 16, i32* %7, align 4
  br label %57

56:                                               ; preds = %48
  store i32 8, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %55
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %85, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %64 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sdiv i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = srem i32 %73, 8
  %75 = call i32 @BIT(i32 %74)
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %62
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 12
  %81 = call i32 @BIT(i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %78, %62
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %58

88:                                               ; preds = %58
  br label %89

89:                                               ; preds = %88, %42
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %92 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @get_highest_rate_idx(i32 %93)
  %95 = and i32 %94, 63
  %96 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %97 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %89, %11
  ret void
}

declare dso_local i32 @rtw_get_bit_value_from_ieee_value(i32) #1

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @get_highest_rate_idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
