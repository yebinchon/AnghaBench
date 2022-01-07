; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_get_free_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_get_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64** }

@.str = private unnamed_addr constant [19 x i8] c"sta_addr is NULL.\0A\00", align 1
@TOTAL_CAM_ENTRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"-----hwsec_cam_bitmap: 0x%x entry_idx=%d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtl_cam_get_free_entry(%struct.ieee80211_hw* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %6, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 4
  store i32 %17, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = icmp eq i64* null, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @TOTAL_CAM_ENTRY, align 8
  store i64 %22, i64* %3, align 8
  br label %93

23:                                               ; preds = %2
  store i64 4, i64* %9, align 8
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @TOTAL_CAM_ENTRY, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64**, i64*** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i64*, i64** %32, i64 %33
  %35 = load i64*, i64** %34, align 8
  store i64* %35, i64** %10, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = call i64 @ether_addr_equal_unaligned(i64* %36, i64* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i64, i64* %9, align 8
  store i64 %41, i64* %3, align 8
  br label %93

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %24

46:                                               ; preds = %24
  store i64 4, i64* %8, align 8
  br label %47

47:                                               ; preds = %88, %46
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @TOTAL_CAM_ENTRY, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = call i64 @BIT(i32 0)
  %55 = and i64 %53, %54
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %51
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %62)
  %64 = call i64 @BIT(i32 0)
  %65 = load i64, i64* %8, align 8
  %66 = shl i64 %64, %65
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %68 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = or i64 %71, %66
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %75 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64**, i64*** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds i64*, i64** %77, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = load i64*, i64** %5, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @memcpy(i64* %80, i64* %81, i32 %82)
  %84 = load i64, i64* %8, align 8
  store i64 %84, i64* %3, align 8
  br label %93

85:                                               ; preds = %51
  %86 = load i32, i32* %7, align 4
  %87 = ashr i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %47

91:                                               ; preds = %47
  %92 = load i64, i64* @TOTAL_CAM_ENTRY, align 8
  store i64 %92, i64* %3, align 8
  br label %93

93:                                               ; preds = %91, %57, %40, %20
  %94 = load i64, i64* %3, align 8
  ret i64 %94
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @ether_addr_equal_unaligned(i64*, i64*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
