; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_phy_config_bb_with_pghdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_phy_config_bb_with_pghdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@RTL8188EEPHY_REG_ARRAY_PGLEN = common dso_local global i32 0, align 4
@RTL8188EEPHY_REG_ARRAY_PG = common dso_local global i32* null, align 8
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"configtype != BaseBand_Config_PHY_REG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64)* @phy_config_bb_with_pghdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_config_bb_with_pghdr(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @RTL8188EEPHY_REG_ARRAY_PGLEN, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** @RTL8188EEPHY_REG_ARRAY_PG, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %195

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %191, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %194

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ult i32 %42, -842150451
  br i1 %43, label %44, label %123

44:                                               ; preds = %24
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 254
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @mdelay(i32 50)
  br label %103

53:                                               ; preds = %44
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 253
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 @mdelay(i32 5)
  br label %102

62:                                               ; preds = %53
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 252
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i32 @mdelay(i32 1)
  br label %101

71:                                               ; preds = %62
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 251
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 @udelay(i32 50)
  br label %100

80:                                               ; preds = %71
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 250
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i32 @udelay(i32 5)
  br label %99

89:                                               ; preds = %80
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 249
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = call i32 @udelay(i32 1)
  br label %98

98:                                               ; preds = %96, %89
  br label %99

99:                                               ; preds = %98, %87
  br label %100

100:                                              ; preds = %99, %78
  br label %101

101:                                              ; preds = %100, %69
  br label %102

102:                                              ; preds = %101, %60
  br label %103

103:                                              ; preds = %102, %51
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @store_pwrindex_rate_offset(%struct.ieee80211_hw* %104, i32 %109, i32 %115, i32 %121)
  br label %191

123:                                              ; preds = %24
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @_rtl88e_check_condition(%struct.ieee80211_hw* %124, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %189, label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 2
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %8, align 4
  %137 = sub nsw i32 %136, 2
  %138 = icmp sge i32 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %194

140:                                              ; preds = %132
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %9, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %10, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %11, align 4
  br label %158

158:                                              ; preds = %168, %140
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 57005
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %8, align 4
  %164 = sub nsw i32 %163, 5
  %165 = icmp slt i32 %162, %164
  br label %166

166:                                              ; preds = %161, %158
  %167 = phi i1 [ false, %158 ], [ %165, %161 ]
  br i1 %167, label %168, label %188

168:                                              ; preds = %166
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 3
  store i32 %170, i32* %6, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %9, align 4
  %176 = load i32*, i32** %7, align 8
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %10, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %11, align 4
  br label %158

188:                                              ; preds = %166
  br label %189

189:                                              ; preds = %188, %123
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190, %103
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 3
  store i32 %193, i32* %6, align 4
  br label %20

194:                                              ; preds = %139, %20
  br label %200

195:                                              ; preds = %2
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %197 = load i32, i32* @COMP_SEND, align 4
  %198 = load i32, i32* @DBG_TRACE, align 4
  %199 = call i32 @RT_TRACE(%struct.rtl_priv* %196, i32 %197, i32 %198, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %200

200:                                              ; preds = %195, %194
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @store_pwrindex_rate_offset(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @_rtl88e_check_condition(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
