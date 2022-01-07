; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_reg_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_reg_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, %struct.qtnf_bus* }
%struct.qtnf_bus = type { i32 }
%struct.regulatory_request = type { i32, i32, i32, i32* }
%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i32* }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_reg_notify = type { i32, i64, i32, i32, i32, i32* }

@QLINK_VIFID_RSVD = common dso_local global i32 0, align 4
@QLINK_CMD_REG_NOTIFY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLINK_REGDOM_SET_BY_CORE = common dso_local global i32 0, align 4
@QLINK_REGDOM_SET_BY_USER = common dso_local global i32 0, align 4
@QLINK_REGDOM_SET_BY_DRIVER = common dso_local global i32 0, align 4
@QLINK_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i32 0, align 4
@QLINK_USER_REG_HINT_USER = common dso_local global i32 0, align 4
@QLINK_USER_REG_HINT_CELL_BASE = common dso_local global i32 0, align 4
@QLINK_USER_REG_HINT_INDOOR = common dso_local global i32 0, align 4
@QLINK_DFS_FCC = common dso_local global i32 0, align 4
@QLINK_DFS_ETSI = common dso_local global i32 0, align 4
@QLINK_DFS_JP = common dso_local global i32 0, align 4
@QLINK_DFS_UNSET = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_reg_notify(%struct.qtnf_wmac* %0, %struct.regulatory_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_wmac*, align 8
  %6 = alloca %struct.regulatory_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.qtnf_bus*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qlink_cmd_reg_notify*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_supported_band*, align 8
  %15 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %5, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %17 = call %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac* %16)
  store %struct.wiphy* %17, %struct.wiphy** %8, align 8
  %18 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %19 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %18, i32 0, i32 1
  %20 = load %struct.qtnf_bus*, %struct.qtnf_bus** %19, align 8
  store %struct.qtnf_bus* %20, %struct.qtnf_bus** %9, align 8
  %21 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %22 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @QLINK_VIFID_RSVD, align 4
  %25 = load i32, i32* @QLINK_CMD_REG_NOTIFY, align 4
  %26 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %23, i32 %24, i32 %25, i32 40)
  store %struct.sk_buff* %26, %struct.sk_buff** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %171

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.qlink_cmd_reg_notify*
  store %struct.qlink_cmd_reg_notify* %36, %struct.qlink_cmd_reg_notify** %12, align 8
  %37 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %38 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %43 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %47 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %52 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %50, i32* %54, align 4
  %55 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %56 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %74 [
    i32 134, label %58
    i32 131, label %62
    i32 132, label %66
    i32 133, label %70
  ]

58:                                               ; preds = %32
  %59 = load i32, i32* @QLINK_REGDOM_SET_BY_CORE, align 4
  %60 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %61 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  br label %74

62:                                               ; preds = %32
  %63 = load i32, i32* @QLINK_REGDOM_SET_BY_USER, align 4
  %64 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %65 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  br label %74

66:                                               ; preds = %32
  %67 = load i32, i32* @QLINK_REGDOM_SET_BY_DRIVER, align 4
  %68 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %69 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  br label %74

70:                                               ; preds = %32
  %71 = load i32, i32* @QLINK_REGDOM_SET_BY_COUNTRY_IE, align 4
  %72 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %73 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %32, %70, %66, %62, %58
  %75 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %76 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %90 [
    i32 128, label %78
    i32 130, label %82
    i32 129, label %86
  ]

78:                                               ; preds = %74
  %79 = load i32, i32* @QLINK_USER_REG_HINT_USER, align 4
  %80 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %81 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %90

82:                                               ; preds = %74
  %83 = load i32, i32* @QLINK_USER_REG_HINT_CELL_BASE, align 4
  %84 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %85 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %90

86:                                               ; preds = %74
  %87 = load i32, i32* @QLINK_USER_REG_HINT_INDOOR, align 4
  %88 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %89 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %74, %86, %82, %78
  %91 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %92 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %106 [
    i32 136, label %94
    i32 137, label %98
    i32 135, label %102
  ]

94:                                               ; preds = %90
  %95 = load i32, i32* @QLINK_DFS_FCC, align 4
  %96 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %97 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %110

98:                                               ; preds = %90
  %99 = load i32, i32* @QLINK_DFS_ETSI, align 4
  %100 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %101 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %110

102:                                              ; preds = %90
  %103 = load i32, i32* @QLINK_DFS_JP, align 4
  %104 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %105 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %110

106:                                              ; preds = %90
  %107 = load i32, i32* @QLINK_DFS_UNSET, align 4
  %108 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %109 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %102, %98, %94
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %113 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %115 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %159, %110
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %162

120:                                              ; preds = %116
  %121 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %122 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %121, i32 0, i32 0
  %123 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %123, i64 %125
  %127 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %126, align 8
  store %struct.ieee80211_supported_band* %127, %struct.ieee80211_supported_band** %14, align 8
  %128 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %129 = icmp ne %struct.ieee80211_supported_band* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %120
  br label %159

131:                                              ; preds = %120
  %132 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %133 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = zext i32 %134 to i64
  %136 = load %struct.qlink_cmd_reg_notify*, %struct.qlink_cmd_reg_notify** %12, align 8
  %137 = getelementptr inbounds %struct.qlink_cmd_reg_notify, %struct.qlink_cmd_reg_notify* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, %135
  store i64 %139, i64* %137, align 8
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %155, %131
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %143 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ult i32 %141, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %148 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %149 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = call i32 @qtnf_cmd_channel_tlv_add(%struct.sk_buff* %147, i32* %153)
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %15, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %140

158:                                              ; preds = %140
  br label %159

159:                                              ; preds = %158, %130
  %160 = load i32, i32* %13, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %116

162:                                              ; preds = %116
  %163 = load %struct.qtnf_bus*, %struct.qtnf_bus** %9, align 8
  %164 = call i32 @qtnf_bus_lock(%struct.qtnf_bus* %163)
  %165 = load %struct.qtnf_bus*, %struct.qtnf_bus** %9, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %167 = call i32 @qtnf_cmd_send(%struct.qtnf_bus* %165, %struct.sk_buff* %166)
  store i32 %167, i32* %11, align 4
  %168 = load %struct.qtnf_bus*, %struct.qtnf_bus** %9, align 8
  %169 = call i32 @qtnf_bus_unlock(%struct.qtnf_bus* %168)
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %162, %29
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac*) #1

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_cmd_channel_tlv_add(%struct.sk_buff*, i32*) #1

declare dso_local i32 @qtnf_bus_lock(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_cmd_send(%struct.qtnf_bus*, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(%struct.qtnf_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
