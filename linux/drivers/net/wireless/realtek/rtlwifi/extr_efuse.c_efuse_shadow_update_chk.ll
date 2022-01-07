; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_update_chk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_update_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.rtl_efuse = type { i64**, i32 }

@EFUSE_INIT_MAP = common dso_local global i64 0, align 8
@EFUSE_MODIFY_MAP = common dso_local global i64 0, align 8
@EFUSE_MAX_SIZE = common dso_local global i32 0, align 4
@EFUSE_OOB_PROTECT_BYTES_LEN = common dso_local global i64 0, align 8
@COMP_EFUSE = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"efuse_shadow_update_chk(): totalbytes(%#x), hdr_num(%#x), words_need(%#x), efuse_used(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efuse_shadow_update_chk(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %3, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %17)
  store %struct.rtl_efuse* %18, %struct.rtl_efuse** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %96, %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %99

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, 8
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %86, %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %89

28:                                               ; preds = %25
  %29 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %29, i32 0, i32 0
  %31 = load i64**, i64*** %30, align 8
  %32 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %33 = getelementptr inbounds i64*, i64** %31, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %34, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %42 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %41, i32 0, i32 0
  %43 = load i64**, i64*** %42, align 8
  %44 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %45 = getelementptr inbounds i64*, i64** %43, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %46, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %40, %52
  br i1 %53, label %82, label %54

54:                                               ; preds = %28
  %55 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %56 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %55, i32 0, i32 0
  %57 = load i64**, i64*** %56, align 8
  %58 = load i64, i64* @EFUSE_INIT_MAP, align 8
  %59 = getelementptr inbounds i64*, i64** %57, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %61, %62
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %60, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %69 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %68, i32 0, i32 0
  %70 = load i64**, i64*** %69, align 8
  %71 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %72 = getelementptr inbounds i64*, i64** %70, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %74, %75
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %73, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %67, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %54, %28
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  store i32 1, i32* %12, align 4
  br label %85

85:                                               ; preds = %82, %54
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %6, align 4
  br label %25

89:                                               ; preds = %25
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %19

99:                                               ; preds = %19
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 %101, 2
  %103 = add nsw i32 %100, %102
  store i32 %103, i32* %10, align 4
  %104 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %105 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* @EFUSE_MAX_SIZE, align 4
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %112 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @EFUSE_OOB_PROTECT_BYTES_LEN, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %110, %118
  %120 = icmp sge i32 %109, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %99
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %121, %99
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %124 = load i32, i32* @COMP_EFUSE, align 4
  %125 = load i32, i32* @DBG_LOUD, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @RT_TRACE(%struct.rtl_priv* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %13, align 4
  ret i32 %131
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
