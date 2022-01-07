; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_fast_ant_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_fast_ant_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_dm = type { %struct.fast_ant_training }
%struct.fast_ant_training = type { i64, i32*, i32*, i32*, i32*, i64, i32*, i32* }

@FAT_TRAINING_STATE = common dso_local global i64 0, align 8
@DM_REG_TXAGC_A_1_MCS32_11N = common dso_local global i32 0, align 4
@DM_REG_IGI_A_11N = common dso_local global i32 0, align 4
@DM_REG_RX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@DM_REG_TX_ANT_CTRL_11N = common dso_local global i32 0, align 4
@FAT_NORMAL_STATE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@RTL_WATCH_DOG_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl88e_dm_fast_ant_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_dm_fast_ant_training(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_dm*, align 8
  %5 = alloca %struct.fast_ant_training*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %13)
  store %struct.rtl_dm* %14, %struct.rtl_dm** %4, align 8
  %15 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %15, i32 0, i32 0
  store %struct.fast_ant_training* %16, %struct.fast_ant_training** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %18 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FAT_TRAINING_STATE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %181

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %84, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 7
  br i1 %25, label %26, label %87

26:                                               ; preds = %23
  %27 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %28 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %37 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 0, i32* %41, align 4
  br label %64

42:                                               ; preds = %26
  %43 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %44 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %51 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %49, %56
  %58 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %59 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  store i32 1, i32* %9, align 4
  br label %64

64:                                               ; preds = %42, %35
  %65 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %66 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %64
  %75 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %76 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %74, %64
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %23

87:                                               ; preds = %23
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %92 = load i32, i32* @DM_REG_TXAGC_A_1_MCS32_11N, align 4
  %93 = call i32 @BIT(i32 16)
  %94 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %91, i32 %92, i32 %93, i32 0)
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %96 = load i32, i32* @DM_REG_IGI_A_11N, align 4
  %97 = call i32 @BIT(i32 7)
  %98 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %95, i32 %96, i32 %97, i32 0)
  br label %157

99:                                               ; preds = %87
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %101 = load i32, i32* @DM_REG_TXAGC_A_1_MCS32_11N, align 4
  %102 = call i32 @BIT(i32 16)
  %103 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %100, i32 %101, i32 %102, i32 0)
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %105 = load i32, i32* @DM_REG_RX_ANT_CTRL_11N, align 4
  %106 = call i32 @BIT(i32 8)
  %107 = call i32 @BIT(i32 7)
  %108 = or i32 %106, %107
  %109 = call i32 @BIT(i32 6)
  %110 = or i32 %108, %109
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %104, i32 %105, i32 %110, i32 %111)
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %114 = load i32, i32* @DM_REG_TX_ANT_CTRL_11N, align 4
  %115 = call i32 @BIT(i32 21)
  %116 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %113, i32 %114, i32 %115, i32 1)
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @BIT(i32 0)
  %119 = and i32 %117, %118
  %120 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %121 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %124 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %119, i32* %126, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @BIT(i32 1)
  %129 = and i32 %127, %128
  %130 = ashr i32 %129, 1
  %131 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %132 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %135 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %130, i32* %137, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @BIT(i32 2)
  %140 = and i32 %138, %139
  %141 = ashr i32 %140, 2
  %142 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %143 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %146 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %141, i32* %148, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %99
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %153 = load i32, i32* @DM_REG_IGI_A_11N, align 4
  %154 = call i32 @BIT(i32 7)
  %155 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %152, i32 %153, i32 %154, i32 0)
  br label %156

156:                                              ; preds = %151, %99
  br label %157

157:                                              ; preds = %156, %90
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %174, %157
  %159 = load i32, i32* %6, align 4
  %160 = icmp slt i32 %159, 7
  br i1 %160, label %161, label %177

161:                                              ; preds = %158
  %162 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %163 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 0, i32* %167, align 4
  %168 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %169 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %161
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %158

177:                                              ; preds = %158
  %178 = load i64, i64* @FAT_NORMAL_STATE, align 8
  %179 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %180 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  br label %209

181:                                              ; preds = %1
  %182 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %183 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @FAT_NORMAL_STATE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %209

187:                                              ; preds = %181
  %188 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %189 = call i32 @rtl88e_set_next_mac_address_target(%struct.ieee80211_hw* %188)
  %190 = load i64, i64* @FAT_TRAINING_STATE, align 8
  %191 = load %struct.fast_ant_training*, %struct.fast_ant_training** %5, align 8
  %192 = getelementptr inbounds %struct.fast_ant_training, %struct.fast_ant_training* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %194 = load i32, i32* @DM_REG_TXAGC_A_1_MCS32_11N, align 4
  %195 = call i32 @BIT(i32 16)
  %196 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %193, i32 %194, i32 %195, i32 1)
  %197 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %198 = load i32, i32* @DM_REG_IGI_A_11N, align 4
  %199 = call i32 @BIT(i32 7)
  %200 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %197, i32 %198, i32 %199, i32 1)
  %201 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %202 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i64, i64* @jiffies, align 8
  %205 = load i32, i32* @RTL_WATCH_DOG_TIME, align 4
  %206 = call i64 @MSECS(i32 %205)
  %207 = add nsw i64 %204, %206
  %208 = call i32 @mod_timer(i32* %203, i64 %207)
  br label %209

209:                                              ; preds = %177, %187, %181
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl88e_set_next_mac_address_target(%struct.ieee80211_hw*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @MSECS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
