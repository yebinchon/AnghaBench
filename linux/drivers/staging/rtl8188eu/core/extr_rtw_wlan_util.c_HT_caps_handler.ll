; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_HT_caps_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_HT_caps_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.mlme_ext_priv }
%struct.mlme_priv = type { %struct.ht_priv }
%struct.ht_priv = type { i32 }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ndis_802_11_var_ie = type { i32, i32* }

@MCS_rate_1R = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HT_caps_handler(%struct.adapter* %0, %struct.ndis_802_11_var_ie* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ndis_802_11_var_ie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlme_ext_priv*, align 8
  %9 = alloca %struct.mlme_ext_info*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  %11 = alloca %struct.ht_priv*, align 8
  %12 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.ndis_802_11_var_ie* %1, %struct.ndis_802_11_var_ie** %4, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  store %struct.mlme_ext_priv* %14, %struct.mlme_ext_priv** %8, align 8
  %15 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %16 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %15, i32 0, i32 0
  store %struct.mlme_ext_info* %16, %struct.mlme_ext_info** %9, align 8
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  store %struct.mlme_priv* %18, %struct.mlme_priv** %10, align 8
  %19 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %20 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %19, i32 0, i32 0
  store %struct.ht_priv* %20, %struct.ht_priv** %11, align 8
  %21 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %22 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %21, i32 0, i32 1
  %23 = bitcast %struct.TYPE_2__* %22 to i32*
  store i32* %23, i32** %12, align 8
  %24 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %25 = icmp ne %struct.ndis_802_11_var_ie* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %151

27:                                               ; preds = %2
  %28 = load %struct.ht_priv*, %struct.ht_priv** %11, align 8
  %29 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %151

33:                                               ; preds = %27
  %34 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %127, %33
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %39 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %130

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 2
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %47 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %52
  store i32 %58, i32* %56, align 4
  br label %126

59:                                               ; preds = %42
  %60 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %61 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 3
  %65 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %66 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 3
  %73 = icmp sgt i32 %64, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %59
  %75 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %76 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 3
  store i32 %82, i32* %6, align 4
  br label %89

83:                                               ; preds = %59
  %84 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %85 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 3
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %74
  %90 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %91 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 28
  %95 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %96 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 28
  %103 = icmp sgt i32 %94, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %89
  %105 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %106 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 28
  store i32 %109, i32* %7, align 4
  br label %119

110:                                              ; preds = %89
  %111 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %112 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 28
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %110, %104
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %124 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %45
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %5, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %36

130:                                              ; preds = %36
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %148, %130
  %132 = load i32, i32* %5, align 4
  %133 = icmp ult i32 %132, 16
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load i32*, i32** @MCS_rate_1R, align 8
  %136 = load i32, i32* %5, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %141 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %5, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %139
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %134
  %149 = load i32, i32* %5, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %131

151:                                              ; preds = %26, %32, %131
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
