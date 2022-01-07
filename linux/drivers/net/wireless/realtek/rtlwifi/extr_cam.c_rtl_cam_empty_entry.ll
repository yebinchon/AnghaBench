; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_empty_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_empty_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@SEC_CAM_AES = common dso_local global i64 0, align 8
@SEC_CAM_WEP40 = common dso_local global i64 0, align 8
@SEC_CAM_WEP104 = common dso_local global i64 0, align 8
@SEC_CAM_TKIP = common dso_local global i64 0, align 8
@CAM_CONTENT_COUNT = common dso_local global i64 0, align 8
@WCAMI = common dso_local global i64 0, align 8
@RWCAM = common dso_local global i64 0, align 8
@COMP_SEC = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rtl_cam_empty_entry(): WRITE A4: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"rtl_cam_empty_entry(): WRITE A0: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_cam_empty_entry(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @SEC_CAM_AES, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %60 [
    i32 128, label %24
    i32 129, label %33
    i32 130, label %42
    i32 131, label %51
  ]

24:                                               ; preds = %2
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @SEC_CAM_WEP40, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  br label %69

33:                                               ; preds = %2
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @SEC_CAM_WEP104, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %69

42:                                               ; preds = %2
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @SEC_CAM_TKIP, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %69

51:                                               ; preds = %2
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %53 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @SEC_CAM_AES, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  br label %69

60:                                               ; preds = %2
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @SEC_CAM_AES, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %60, %51, %42, %33, %24
  store i64 0, i64* %9, align 8
  br label %70

70:                                               ; preds = %133, %69
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @CAM_CONTENT_COUNT, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %136

74:                                               ; preds = %70
  %75 = load i64, i64* %9, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i64, i64* %4, align 8
  %79 = and i64 %78, 3
  %80 = load i32, i32* %8, align 4
  %81 = shl i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = or i64 %79, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  %85 = call i32 @BIT(i32 15)
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %89

88:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %88, %77
  %90 = load i64, i64* @CAM_CONTENT_COUNT, align 8
  %91 = load i64, i64* %4, align 8
  %92 = mul nsw i64 %90, %91
  %93 = load i64, i64* %9, align 8
  %94 = add nsw i64 %92, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @BIT(i32 31)
  %98 = or i32 %96, %97
  %99 = call i32 @BIT(i32 16)
  %100 = or i32 %98, %99
  store i32 %100, i32* %6, align 4
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @WCAMI, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @rtl_write_dword(%struct.rtl_priv* %101, i32 %109, i32 %110)
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %114 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @RWCAM, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @rtl_write_dword(%struct.rtl_priv* %112, i32 %120, i32 %121)
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %124 = load i32, i32* @COMP_SEC, align 4
  %125 = load i32, i32* @DBG_LOUD, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @RT_TRACE(%struct.rtl_priv* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %129 = load i32, i32* @COMP_SEC, align 4
  %130 = load i32, i32* @DBG_LOUD, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @RT_TRACE(%struct.rtl_priv* %128, i32 %129, i32 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %89
  %134 = load i64, i64* %9, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %9, align 8
  br label %70

136:                                              ; preds = %70
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
