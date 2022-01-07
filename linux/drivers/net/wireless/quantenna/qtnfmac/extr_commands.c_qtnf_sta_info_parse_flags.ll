; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_sta_info_parse_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_sta_info_parse_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.qlink_sta_info_state = type { i32, i32 }

@QLINK_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_WME = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_WME = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_MFP = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_MFP = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_AUTHENTICATED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHENTICATED = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nl80211_sta_flag_update*, %struct.qlink_sta_info_state*)* @qtnf_sta_info_parse_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_sta_info_parse_flags(%struct.nl80211_sta_flag_update* %0, %struct.qlink_sta_info_state* %1) #0 {
  %3 = alloca %struct.nl80211_sta_flag_update*, align 8
  %4 = alloca %struct.qlink_sta_info_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nl80211_sta_flag_update* %0, %struct.nl80211_sta_flag_update** %3, align 8
  store %struct.qlink_sta_info_state* %1, %struct.qlink_sta_info_state** %4, align 8
  %7 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %8 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %10 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.qlink_sta_info_state*, %struct.qlink_sta_info_state** %4, align 8
  %12 = getelementptr inbounds %struct.qlink_sta_info_state, %struct.qlink_sta_info_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.qlink_sta_info_state*, %struct.qlink_sta_info_state** %4, align 8
  %16 = getelementptr inbounds %struct.qlink_sta_info_state, %struct.qlink_sta_info_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @QLINK_STA_FLAG_AUTHORIZED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %27 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @QLINK_STA_FLAG_AUTHORIZED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %38 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %23
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @QLINK_STA_FLAG_SHORT_PREAMBLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load i32, i32* @NL80211_STA_FLAG_SHORT_PREAMBLE, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %51 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @QLINK_STA_FLAG_SHORT_PREAMBLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load i32, i32* @NL80211_STA_FLAG_SHORT_PREAMBLE, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %62 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %47
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @QLINK_STA_FLAG_WME, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %75 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @QLINK_STA_FLAG_WME, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %86 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %82, %71
  br label %90

90:                                               ; preds = %89, %66
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @QLINK_STA_FLAG_MFP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %97 = call i32 @BIT(i32 %96)
  %98 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %99 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @QLINK_STA_FLAG_MFP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %95
  %107 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %108 = call i32 @BIT(i32 %107)
  %109 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %110 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %106, %95
  br label %114

114:                                              ; preds = %113, %90
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @QLINK_STA_FLAG_AUTHENTICATED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %114
  %120 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %121 = call i32 @BIT(i32 %120)
  %122 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %123 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @QLINK_STA_FLAG_AUTHENTICATED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %119
  %131 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %132 = call i32 @BIT(i32 %131)
  %133 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %134 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %130, %119
  br label %138

138:                                              ; preds = %137, %114
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @QLINK_STA_FLAG_TDLS_PEER, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %138
  %144 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %145 = call i32 @BIT(i32 %144)
  %146 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %147 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @QLINK_STA_FLAG_TDLS_PEER, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %143
  %155 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %156 = call i32 @BIT(i32 %155)
  %157 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %158 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %154, %143
  br label %162

162:                                              ; preds = %161, %138
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @QLINK_STA_FLAG_ASSOCIATED, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %162
  %168 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %169 = call i32 @BIT(i32 %168)
  %170 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %171 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @QLINK_STA_FLAG_ASSOCIATED, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %167
  %179 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %180 = call i32 @BIT(i32 %179)
  %181 = load %struct.nl80211_sta_flag_update*, %struct.nl80211_sta_flag_update** %3, align 8
  %182 = getelementptr inbounds %struct.nl80211_sta_flag_update, %struct.nl80211_sta_flag_update* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %178, %167
  br label %186

186:                                              ; preds = %185, %162
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
