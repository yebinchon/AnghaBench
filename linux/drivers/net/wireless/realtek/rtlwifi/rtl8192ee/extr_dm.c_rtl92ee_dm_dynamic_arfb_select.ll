; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_dynamic_arfb_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_dynamic_arfb_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@DESC92C_RATEMCS8 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS12 = common dso_local global i64 0, align 8
@REG_DARFRC = common dso_local global i64 0, align 8
@DESC92C_RATEMCS11 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS10 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS9 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS15 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS14 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS13 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_dm_dynamic_arfb_select(%struct.ieee80211_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @DESC92C_RATEMCS8, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %141

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @DESC92C_RATEMCS12, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %141

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %80

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @DESC92C_RATEMCS12, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %26 = load i64, i64* @REG_DARFRC, align 8
  %27 = call i32 @rtl_write_dword(%struct.rtl_priv* %25, i64 %26, i32 0)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %29 = load i64, i64* @REG_DARFRC, align 8
  %30 = add nsw i64 %29, 4
  %31 = call i32 @rtl_write_dword(%struct.rtl_priv* %28, i64 %30, i32 117835009)
  br label %79

32:                                               ; preds = %20
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @DESC92C_RATEMCS11, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %38 = load i64, i64* @REG_DARFRC, align 8
  %39 = call i32 @rtl_write_dword(%struct.rtl_priv* %37, i64 %38, i32 0)
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %41 = load i64, i64* @REG_DARFRC, align 8
  %42 = add nsw i64 %41, 4
  %43 = call i32 @rtl_write_dword(%struct.rtl_priv* %40, i64 %42, i32 117900805)
  br label %78

44:                                               ; preds = %32
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @DESC92C_RATEMCS10, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %50 = load i64, i64* @REG_DARFRC, align 8
  %51 = call i32 @rtl_write_dword(%struct.rtl_priv* %49, i64 %50, i32 0)
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %53 = load i64, i64* @REG_DARFRC, align 8
  %54 = add nsw i64 %53, 4
  %55 = call i32 @rtl_write_dword(%struct.rtl_priv* %52, i64 %54, i32 134743814)
  br label %77

56:                                               ; preds = %44
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @DESC92C_RATEMCS9, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %62 = load i64, i64* @REG_DARFRC, align 8
  %63 = call i32 @rtl_write_dword(%struct.rtl_priv* %61, i64 %62, i32 0)
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %65 = load i64, i64* @REG_DARFRC, align 8
  %66 = add nsw i64 %65, 4
  %67 = call i32 @rtl_write_dword(%struct.rtl_priv* %64, i64 %66, i32 134743815)
  br label %76

68:                                               ; preds = %56
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %70 = load i64, i64* @REG_DARFRC, align 8
  %71 = call i32 @rtl_write_dword(%struct.rtl_priv* %69, i64 %70, i32 0)
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %73 = load i64, i64* @REG_DARFRC, align 8
  %74 = add nsw i64 %73, 4
  %75 = call i32 @rtl_write_dword(%struct.rtl_priv* %72, i64 %74, i32 151586824)
  br label %76

76:                                               ; preds = %68, %60
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %36
  br label %79

79:                                               ; preds = %78, %24
  br label %140

80:                                               ; preds = %17
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* @DESC92C_RATEMCS12, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %86 = load i64, i64* @REG_DARFRC, align 8
  %87 = call i32 @rtl_write_dword(%struct.rtl_priv* %85, i64 %86, i32 83951616)
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %89 = load i64, i64* @REG_DARFRC, align 8
  %90 = add nsw i64 %89, 4
  %91 = call i32 @rtl_write_dword(%struct.rtl_priv* %88, i64 %90, i32 151521030)
  br label %139

92:                                               ; preds = %80
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @DESC92C_RATEMCS11, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %98 = load i64, i64* @REG_DARFRC, align 8
  %99 = call i32 @rtl_write_dword(%struct.rtl_priv* %97, i64 %98, i32 100990976)
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %101 = load i64, i64* @REG_DARFRC, align 8
  %102 = add nsw i64 %101, 4
  %103 = call i32 @rtl_write_dword(%struct.rtl_priv* %100, i64 %102, i32 151521287)
  br label %138

104:                                              ; preds = %92
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @DESC92C_RATEMCS10, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %110 = load i64, i64* @REG_DARFRC, align 8
  %111 = call i32 @rtl_write_dword(%struct.rtl_priv* %109, i64 %110, i32 117833728)
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %113 = load i64, i64* @REG_DARFRC, align 8
  %114 = add nsw i64 %113, 4
  %115 = call i32 @rtl_write_dword(%struct.rtl_priv* %112, i64 %114, i32 168364296)
  br label %137

116:                                              ; preds = %104
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @DESC92C_RATEMCS9, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %122 = load i64, i64* @REG_DARFRC, align 8
  %123 = call i32 @rtl_write_dword(%struct.rtl_priv* %121, i64 %122, i32 117899264)
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %125 = load i64, i64* @REG_DARFRC, align 8
  %126 = add nsw i64 %125, 4
  %127 = call i32 @rtl_write_dword(%struct.rtl_priv* %124, i64 %126, i32 168364040)
  br label %136

128:                                              ; preds = %116
  %129 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %130 = load i64, i64* @REG_DARFRC, align 8
  %131 = call i32 @rtl_write_dword(%struct.rtl_priv* %129, i64 %130, i32 134742016)
  %132 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %133 = load i64, i64* @REG_DARFRC, align 8
  %134 = add nsw i64 %133, 4
  %135 = call i32 @rtl_write_dword(%struct.rtl_priv* %132, i64 %134, i32 185207049)
  br label %136

136:                                              ; preds = %128, %120
  br label %137

137:                                              ; preds = %136, %108
  br label %138

138:                                              ; preds = %137, %96
  br label %139

139:                                              ; preds = %138, %84
  br label %140

140:                                              ; preds = %139, %79
  br label %239

141:                                              ; preds = %13, %3
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %191

144:                                              ; preds = %141
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* @DESC92C_RATEMCS15, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %150 = load i64, i64* @REG_DARFRC, align 8
  %151 = call i32 @rtl_write_dword(%struct.rtl_priv* %149, i64 %150, i32 0)
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %153 = load i64, i64* @REG_DARFRC, align 8
  %154 = add nsw i64 %153, 4
  %155 = call i32 @rtl_write_dword(%struct.rtl_priv* %152, i64 %154, i32 84148994)
  br label %190

156:                                              ; preds = %144
  %157 = load i64, i64* %5, align 8
  %158 = load i64, i64* @DESC92C_RATEMCS14, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %162 = load i64, i64* @REG_DARFRC, align 8
  %163 = call i32 @rtl_write_dword(%struct.rtl_priv* %161, i64 %162, i32 0)
  %164 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %165 = load i64, i64* @REG_DARFRC, align 8
  %166 = add nsw i64 %165, 4
  %167 = call i32 @rtl_write_dword(%struct.rtl_priv* %164, i64 %166, i32 100991746)
  br label %189

168:                                              ; preds = %156
  %169 = load i64, i64* %5, align 8
  %170 = load i64, i64* @DESC92C_RATEMCS13, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %174 = load i64, i64* @REG_DARFRC, align 8
  %175 = call i32 @rtl_write_dword(%struct.rtl_priv* %173, i64 %174, i32 0)
  %176 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %177 = load i64, i64* @REG_DARFRC, align 8
  %178 = add nsw i64 %177, 4
  %179 = call i32 @rtl_write_dword(%struct.rtl_priv* %176, i64 %178, i32 117835010)
  br label %188

180:                                              ; preds = %168
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %182 = load i64, i64* @REG_DARFRC, align 8
  %183 = call i32 @rtl_write_dword(%struct.rtl_priv* %181, i64 %182, i32 0)
  %184 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %185 = load i64, i64* @REG_DARFRC, align 8
  %186 = add nsw i64 %185, 4
  %187 = call i32 @rtl_write_dword(%struct.rtl_priv* %184, i64 %186, i32 100992002)
  br label %188

188:                                              ; preds = %180, %172
  br label %189

189:                                              ; preds = %188, %160
  br label %190

190:                                              ; preds = %189, %148
  br label %238

191:                                              ; preds = %141
  %192 = load i64, i64* %5, align 8
  %193 = load i64, i64* @DESC92C_RATEMCS15, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %191
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %197 = load i64, i64* @REG_DARFRC, align 8
  %198 = call i32 @rtl_write_dword(%struct.rtl_priv* %196, i64 %197, i32 50462720)
  %199 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %200 = load i64, i64* @REG_DARFRC, align 8
  %201 = add nsw i64 %200, 4
  %202 = call i32 @rtl_write_dword(%struct.rtl_priv* %199, i64 %201, i32 117835012)
  br label %237

203:                                              ; preds = %191
  %204 = load i64, i64* %5, align 8
  %205 = load i64, i64* @DESC92C_RATEMCS14, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %215

207:                                              ; preds = %203
  %208 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %209 = load i64, i64* @REG_DARFRC, align 8
  %210 = call i32 @rtl_write_dword(%struct.rtl_priv* %208, i64 %209, i32 50462720)
  %211 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %212 = load i64, i64* @REG_DARFRC, align 8
  %213 = add nsw i64 %212, 4
  %214 = call i32 @rtl_write_dword(%struct.rtl_priv* %211, i64 %213, i32 134678021)
  br label %236

215:                                              ; preds = %203
  %216 = load i64, i64* %5, align 8
  %217 = load i64, i64* @DESC92C_RATEMCS13, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  %220 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %221 = load i64, i64* @REG_DARFRC, align 8
  %222 = call i32 @rtl_write_dword(%struct.rtl_priv* %220, i64 %221, i32 84017152)
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %224 = load i64, i64* @REG_DARFRC, align 8
  %225 = add nsw i64 %224, 4
  %226 = call i32 @rtl_write_dword(%struct.rtl_priv* %223, i64 %225, i32 151521030)
  br label %235

227:                                              ; preds = %215
  %228 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %229 = load i64, i64* @REG_DARFRC, align 8
  %230 = call i32 @rtl_write_dword(%struct.rtl_priv* %228, i64 %229, i32 67239936)
  %231 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %232 = load i64, i64* @REG_DARFRC, align 8
  %233 = add nsw i64 %232, 4
  %234 = call i32 @rtl_write_dword(%struct.rtl_priv* %231, i64 %233, i32 134678021)
  br label %235

235:                                              ; preds = %227, %219
  br label %236

236:                                              ; preds = %235, %207
  br label %237

237:                                              ; preds = %236, %195
  br label %238

238:                                              ; preds = %237, %190
  br label %239

239:                                              ; preds = %238, %140
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
