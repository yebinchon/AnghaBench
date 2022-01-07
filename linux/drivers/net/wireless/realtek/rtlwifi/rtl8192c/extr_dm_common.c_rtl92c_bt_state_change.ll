; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_bt_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_bt_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@BT_MASK = common dso_local global i32 0, align 4
@BT_IDLE = common dso_local global i64 0, align 8
@BT_SCO = common dso_local global i32 0, align 4
@BT_BUSY = common dso_local global i32 0, align 4
@BT_OTHERBUSY = common dso_local global i32 0, align 4
@BT_PAN = common dso_local global i32 0, align 4
@BT_OTHER_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl92c_bt_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl92c_bt_state_change(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %4, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAC80211_LINKED, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %223

21:                                               ; preds = %1
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %23 = call i32 @rtl_read_byte(%struct.rtl_priv* %22, i32 1277)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %25 = call i32 @rtl_read_dword(%struct.rtl_priv* %24, i32 1160)
  %26 = load i32, i32* @BT_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %29 = call i32 @rtl_read_dword(%struct.rtl_priv* %28, i32 1164)
  %30 = load i32, i32* @BT_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %33 = call i32 @rtl_read_dword(%struct.rtl_priv* %32, i32 1168)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BT_MASK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %21
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @BT_MASK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 255
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %223

48:                                               ; preds = %44, %41, %37, %21
  %49 = call i32 @BIT_OFFSET_LEN_MASK_32(i32 0, i32 1)
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %52, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %48
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %64 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %91

68:                                               ; preds = %58
  %69 = load i64, i64* @BT_IDLE, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %76 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %83

81:                                               ; preds = %68
  %82 = call i32 @BIT_OFFSET_LEN_MASK_32(i32 1, i32 1)
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi i32 [ 0, %80 ], [ %82, %81 ]
  %85 = or i32 %74, %84
  %86 = call i32 @BIT_OFFSET_LEN_MASK_32(i32 2, i32 1)
  %87 = or i32 %85, %86
  store i32 %87, i32* %10, align 4
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @rtl_write_byte(%struct.rtl_priv* %88, i32 1277, i32 %89)
  br label %91

91:                                               ; preds = %83, %58
  store i32 1, i32* %2, align 4
  br label %223

92:                                               ; preds = %48
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 %93, 1000
  %95 = load i32, i32* %5, align 4
  %96 = sdiv i32 %94, %95
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 %97, 1000
  %99 = load i32, i32* %5, align 4
  %100 = sdiv i32 %98, %99
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %107 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 5
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %222

111:                                              ; preds = %92
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %113 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %222

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 30
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %121, 30
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i64, i64* @BT_IDLE, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  br label %161

126:                                              ; preds = %120, %117
  %127 = load i32, i32* %7, align 4
  %128 = icmp sgt i32 %127, 110
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %130, 250
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* @BT_SCO, align 4
  store i32 %133, i32* %11, align 4
  br label %160

134:                                              ; preds = %129, %126
  %135 = load i32, i32* %6, align 4
  %136 = icmp sge i32 %135, 200
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = icmp sge i32 %138, 200
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @BT_BUSY, align 4
  store i32 %141, i32* %11, align 4
  br label %159

142:                                              ; preds = %137, %134
  %143 = load i32, i32* %6, align 4
  %144 = icmp sge i32 %143, 350
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %146, 500
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @BT_OTHERBUSY, align 4
  store i32 %149, i32* %11, align 4
  br label %158

150:                                              ; preds = %145, %142
  %151 = load i32, i32* %6, align 4
  %152 = icmp sge i32 %151, 500
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* @BT_PAN, align 4
  store i32 %154, i32* %11, align 4
  br label %157

155:                                              ; preds = %150
  %156 = load i32, i32* @BT_OTHER_ACTION, align 4
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %155, %153
  br label %158

158:                                              ; preds = %157, %148
  br label %159

159:                                              ; preds = %158, %140
  br label %160

160:                                              ; preds = %159, %132
  br label %161

161:                                              ; preds = %160, %123
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %164 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %162, %166
  br i1 %167, label %168, label %221

168:                                              ; preds = %161
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %171 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %175 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %182

180:                                              ; preds = %168
  %181 = call i32 @BIT_OFFSET_LEN_MASK_32(i32 1, i32 1)
  br label %182

182:                                              ; preds = %180, %179
  %183 = phi i32 [ 0, %179 ], [ %181, %180 ]
  %184 = or i32 %173, %183
  %185 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %186 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* @BT_IDLE, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %182
  br label %195

193:                                              ; preds = %182
  %194 = call i32 @BIT_OFFSET_LEN_MASK_32(i32 2, i32 1)
  br label %195

195:                                              ; preds = %193, %192
  %196 = phi i32 [ 0, %192 ], [ %194, %193 ]
  %197 = or i32 %184, %196
  store i32 %197, i32* %10, align 4
  %198 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %199 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = load i64, i64* @BT_IDLE, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %195
  %206 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %207 = call i32 @rtl_write_word(%struct.rtl_priv* %206, i32 1284, i32 3276)
  %208 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %209 = call i32 @rtl_write_byte(%struct.rtl_priv* %208, i32 1286, i32 84)
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %211 = call i32 @rtl_write_byte(%struct.rtl_priv* %210, i32 1287, i32 84)
  br label %217

212:                                              ; preds = %195
  %213 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %214 = call i32 @rtl_write_byte(%struct.rtl_priv* %213, i32 1286, i32 0)
  %215 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %216 = call i32 @rtl_write_byte(%struct.rtl_priv* %215, i32 1287, i32 0)
  br label %217

217:                                              ; preds = %212, %205
  %218 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @rtl_write_byte(%struct.rtl_priv* %218, i32 1277, i32 %219)
  store i32 1, i32* %2, align 4
  br label %223

221:                                              ; preds = %161
  br label %222

222:                                              ; preds = %221, %111, %92
  store i32 0, i32* %2, align 4
  br label %223

223:                                              ; preds = %222, %217, %91, %47, %20
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT_OFFSET_LEN_MASK_32(i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
