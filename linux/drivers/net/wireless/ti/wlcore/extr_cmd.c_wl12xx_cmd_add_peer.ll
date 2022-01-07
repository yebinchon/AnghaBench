; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_add_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_add_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32* }
%struct.wl12xx_vif = type { i64, i32, i32 }
%struct.ieee80211_sta = type { i32, i32*, %struct.TYPE_4__, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.wl12xx_cmd_add_peer = type { i64, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cmd add peer %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WL1271_AP_BSS_INDEX = common dso_local global i32 0, align 4
@NUM_ACCESS_CATEGORIES_COPY = common dso_local global i32 0, align 4
@WL1271_PSD_UPSD_TRIGGER = common dso_local global i32 0, align 4
@WL1271_PSD_LEGACY = common dso_local global i32 0, align 4
@HW_HT_RATES_OFFSET = common dso_local global i32 0, align 4
@HW_MIMO_RATES_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"peer has no supported rates yet, configuring basic rates: 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"new peer rates=0x%x queues=0x%x\00", align 1
@CMD_ADD_PEER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to initiate cmd add peer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_add_peer(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_sta* %2, i64 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wl12xx_cmd_add_peer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @DEBUG_CMD, align 4
  %14 = load i64, i64* %8, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.wl12xx_cmd_add_peer* @kzalloc(i32 56, i32 %17)
  store %struct.wl12xx_cmd_add_peer* %18, %struct.wl12xx_cmd_add_peer** %9, align 8
  %19 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %20 = icmp ne %struct.wl12xx_cmd_add_peer* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  br label %197

24:                                               ; preds = %4
  %25 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %26 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memcpy(i32 %27, i32 %30, i32 %31)
  %33 = load i32, i32* @WL1271_AP_BSS_INDEX, align 4
  %34 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %35 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %40 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %43 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %48 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %56 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %64 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %66 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %69 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %110, %24
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @NUM_ACCESS_CATEGORIES_COPY, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %113

74:                                               ; preds = %70
  %75 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  %80 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %79
  %88 = load i32, i32* @WL1271_PSD_UPSD_TRIGGER, align 4
  %89 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %90 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @NUM_ACCESS_CATEGORIES_COPY, align 4
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  store i32 %88, i32* %97, align 4
  br label %109

98:                                               ; preds = %79, %74
  %99 = load i32, i32* @WL1271_PSD_LEGACY, align 4
  %100 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %101 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @NUM_ACCESS_CATEGORIES_COPY, align 4
  %104 = sub nsw i32 %103, 1
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  store i32 %99, i32* %108, align 4
  br label %109

109:                                              ; preds = %98, %87
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %70

113:                                              ; preds = %70
  %114 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %118 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %12, align 4
  %122 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %123 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %149

127:                                              ; preds = %113
  %128 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @HW_HT_RATES_OFFSET, align 4
  %136 = shl i32 %134, %135
  %137 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %138 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @HW_MIMO_RATES_OFFSET, align 4
  %145 = shl i32 %143, %144
  %146 = or i32 %136, %145
  %147 = load i32, i32* %12, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %127, %113
  %150 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %153 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @wl1271_tx_enabled_rates_get(%struct.wl1271* %150, i32 %151, i64 %154)
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %158 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %160 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %159, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %175, label %163

163:                                              ; preds = %149
  %164 = load i32, i32* @DEBUG_CMD, align 4
  %165 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %166 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %164, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %170 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @cpu_to_le32(i32 %171)
  %173 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %174 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %163, %149
  %176 = load i32, i32* @DEBUG_CMD, align 4
  %177 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %178 = getelementptr inbounds %struct.wl12xx_cmd_add_peer, %struct.wl12xx_cmd_add_peer* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %182 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %180, i32 %183)
  %185 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %186 = load i32, i32* @CMD_ADD_PEER, align 4
  %187 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %188 = call i32 @wl1271_cmd_send(%struct.wl1271* %185, i32 %186, %struct.wl12xx_cmd_add_peer* %187, i32 56, i32 0)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %175
  %192 = call i32 @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %194

193:                                              ; preds = %175
  br label %194

194:                                              ; preds = %193, %191
  %195 = load %struct.wl12xx_cmd_add_peer*, %struct.wl12xx_cmd_add_peer** %9, align 8
  %196 = call i32 @kfree(%struct.wl12xx_cmd_add_peer* %195)
  br label %197

197:                                              ; preds = %194, %21
  %198 = load i32, i32* %11, align 4
  ret i32 %198
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.wl12xx_cmd_add_peer* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_tx_enabled_rates_get(%struct.wl1271*, i32, i64) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_add_peer*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_add_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
