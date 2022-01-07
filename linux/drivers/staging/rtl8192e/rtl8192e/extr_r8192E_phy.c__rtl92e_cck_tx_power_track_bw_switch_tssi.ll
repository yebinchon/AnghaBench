; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_cck_tx_power_track_bw_switch_tssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_cck_tx_power_track_bw_switch_tssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, %struct.TYPE_4__*, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CCKTxBBGainTableLength = common dso_local global i32 0, align 4
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"20M, priv->CCKPresentAttentuation = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"40M, priv->CCKPresentAttentuation = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_cck_tx_power_track_bw_switch_tssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_cck_tx_power_track_bw_switch_tssi(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %181 [
    i32 129, label %9
    i32 128, label %95
  ]

9:                                                ; preds = %1
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @CCKTxBBGainTableLength, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %9
  %27 = load i32, i32* @CCKTxBBGainTableLength, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %9
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @RT_TRACE(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 14
  br i1 %52, label %53, label %66

53:                                               ; preds = %40
  %54 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %55 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @rtl92e_dm_cck_txpower_adjust(%struct.net_device* %61, i32 %64)
  br label %94

66:                                               ; preds = %53, %40
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 14
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %81 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %84 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @rtl92e_dm_cck_txpower_adjust(%struct.net_device* %82, i32 %85)
  br label %93

87:                                               ; preds = %74, %66
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @rtl92e_dm_cck_txpower_adjust(%struct.net_device* %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %79
  br label %94

94:                                               ; preds = %93, %58
  br label %181

95:                                               ; preds = %1
  %96 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %97 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %100 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %104 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %106 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %107 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @RT_TRACE(i32 %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %108)
  %110 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %111 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @CCKTxBBGainTableLength, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = icmp sgt i64 %112, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %95
  %118 = load i32, i32* @CCKTxBBGainTableLength, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %122 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %121, i32 0, i32 3
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %117, %95
  %124 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %125 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %130 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %123
  %132 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %133 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 14
  br i1 %138, label %139, label %152

139:                                              ; preds = %131
  %140 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %141 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %139
  %145 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %146 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %145, i32 0, i32 1
  store i32 1, i32* %146, align 4
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %149 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @rtl92e_dm_cck_txpower_adjust(%struct.net_device* %147, i32 %150)
  br label %180

152:                                              ; preds = %139, %131
  %153 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %154 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %153, i32 0, i32 2
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 14
  br i1 %159, label %160, label %173

160:                                              ; preds = %152
  %161 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %162 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %160
  %166 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %167 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  %168 = load %struct.net_device*, %struct.net_device** %2, align 8
  %169 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %170 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @rtl92e_dm_cck_txpower_adjust(%struct.net_device* %168, i32 %171)
  br label %179

173:                                              ; preds = %160, %152
  %174 = load %struct.net_device*, %struct.net_device** %2, align 8
  %175 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %176 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @rtl92e_dm_cck_txpower_adjust(%struct.net_device* %174, i32 %177)
  br label %179

179:                                              ; preds = %173, %165
  br label %180

180:                                              ; preds = %179, %144
  br label %181

181:                                              ; preds = %1, %180, %94
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i64) #1

declare dso_local i32 @rtl92e_dm_cck_txpower_adjust(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
