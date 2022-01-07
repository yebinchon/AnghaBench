; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_EdcaTurboCheck.c_odm_EdcaTurboCheckCE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_EdcaTurboCheck.c_odm_EdcaTurboCheckCE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__, i32, %struct.adapter* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.adapter = type { %struct.mlme_ext_priv, %struct.registry_priv, %struct.recv_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64 }
%struct.registry_priv = type { i32 }
%struct.recv_priv = type { i32 }
%struct.dvobj_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hal_com_data = type { i64 }

@HT_IOT_PEER_MAX = common dso_local global i64 0, align 8
@UP_LINK = common dso_local global i64 0, align 8
@DOWN_LINK = common dso_local global i64 0, align 8
@HT_IOT_PEER_CISCO = common dso_local global i64 0, align 8
@ODM_WM_N24G = common dso_local global i32 0, align 4
@edca_setting_DL = common dso_local global i64* null, align 8
@edca_setting_UL = common dso_local global i64* null, align 8
@ODM_WM_G = common dso_local global i32 0, align 4
@ODM_WM_B = common dso_local global i32 0, align 4
@ODM_WM_A = common dso_local global i32 0, align 4
@edca_setting_DL_GMode = common dso_local global i64* null, align 8
@HT_IOT_PEER_AIRGO = common dso_local global i64 0, align 8
@HT_IOT_PEER_MARVELL = common dso_local global i64 0, align 8
@HT_IOT_PEER_ATHEROS = common dso_local global i64 0, align 8
@REG_EDCA_BE_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_EdcaTurboCheckCE(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.dvobj_priv*, align 8
  %6 = alloca %struct.recv_priv*, align 8
  %7 = alloca %struct.registry_priv*, align 8
  %8 = alloca %struct.mlme_ext_priv*, align 8
  %9 = alloca %struct.mlme_ext_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.hal_com_data*, align 8
  store i8* %0, i8** %2, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %3, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load %struct.adapter*, %struct.adapter** %24, align 8
  store %struct.adapter* %25, %struct.adapter** %4, align 8
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %26)
  store %struct.dvobj_priv* %27, %struct.dvobj_priv** %5, align 8
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 2
  store %struct.recv_priv* %29, %struct.recv_priv** %6, align 8
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  store %struct.registry_priv* %31, %struct.registry_priv** %7, align 8
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  store %struct.mlme_ext_priv* %33, %struct.mlme_ext_priv** %8, align 8
  %34 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %34, i32 0, i32 0
  store %struct.mlme_ext_info* %35, %struct.mlme_ext_info** %9, align 8
  store i64 6202411, i64* %10, align 8
  store i64 6202411, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 255, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %36 = load %struct.adapter*, %struct.adapter** %4, align 8
  %37 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %36)
  store %struct.hal_com_data* %37, %struct.hal_com_data** %20, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %1
  %43 = load %struct.recv_priv*, %struct.recv_priv** %6, align 8
  %44 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %232

45:                                               ; preds = %1
  %46 = load %struct.registry_priv*, %struct.registry_priv** %7, align 8
  %47 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.recv_priv*, %struct.recv_priv** %6, align 8
  %52 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %232

53:                                               ; preds = %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %65 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @HT_IOT_PEER_MAX, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.recv_priv*, %struct.recv_priv** %6, align 8
  %72 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  br label %232

73:                                               ; preds = %63
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load %struct.recv_priv*, %struct.recv_priv** %6, align 8
  %78 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %215, label %81

81:                                               ; preds = %76, %73
  %82 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %83 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %16, align 4
  %86 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %87 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %81
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = shl i32 %94, 2
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i64, i64* @UP_LINK, align 8
  store i64 %98, i64* %14, align 8
  br label %101

99:                                               ; preds = %92
  %100 = load i64, i64* @DOWN_LINK, align 8
  store i64 %100, i64* %14, align 8
  br label %101

101:                                              ; preds = %99, %97
  br label %112

102:                                              ; preds = %81
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %16, align 4
  %105 = shl i32 %104, 2
  %106 = icmp sgt i32 %103, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i64, i64* @DOWN_LINK, align 8
  store i64 %108, i64* %14, align 8
  br label %111

109:                                              ; preds = %102
  %110 = load i64, i64* @UP_LINK, align 8
  store i64 %110, i64* %14, align 8
  br label %111

111:                                              ; preds = %109, %107
  br label %112

112:                                              ; preds = %111, %101
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @HT_IOT_PEER_CISCO, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @ODM_WM_N24G, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load i64*, i64** @edca_setting_DL, align 8
  %122 = load i64, i64* %12, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %11, align 8
  %125 = load i64*, i64** @edca_setting_UL, align 8
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %10, align 8
  br label %195

129:                                              ; preds = %116, %112
  %130 = load i64, i64* %12, align 8
  %131 = load i64, i64* @HT_IOT_PEER_CISCO, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %156

133:                                              ; preds = %129
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @ODM_WM_G, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %151, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @ODM_WM_B, align 4
  %140 = load i32, i32* @ODM_WM_G, align 4
  %141 = or i32 %139, %140
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @ODM_WM_A, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* @ODM_WM_B, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147, %143, %137, %133
  %152 = load i64*, i64** @edca_setting_DL_GMode, align 8
  %153 = load i64, i64* %12, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %11, align 8
  br label %194

156:                                              ; preds = %147, %129
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* @HT_IOT_PEER_AIRGO, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @ODM_WM_G, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @ODM_WM_A, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164, %160
  store i64 42544, i64* %11, align 8
  br label %193

169:                                              ; preds = %164, %156
  %170 = load i64, i64* %12, align 8
  %171 = load i64, i64* @HT_IOT_PEER_MARVELL, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %169
  %174 = load i64*, i64** @edca_setting_DL, align 8
  %175 = load i64, i64* %12, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %11, align 8
  %178 = load i64*, i64** @edca_setting_UL, align 8
  %179 = load i64, i64* %12, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %10, align 8
  br label %192

182:                                              ; preds = %169
  %183 = load i64, i64* %12, align 8
  %184 = load i64, i64* @HT_IOT_PEER_ATHEROS, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load i64*, i64** @edca_setting_DL, align 8
  %188 = load i64, i64* %12, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %11, align 8
  br label %191

191:                                              ; preds = %186, %182
  br label %192

192:                                              ; preds = %191, %173
  br label %193

193:                                              ; preds = %192, %168
  br label %194

194:                                              ; preds = %193, %151
  br label %195

195:                                              ; preds = %194, %120
  %196 = load i64, i64* %14, align 8
  %197 = load i64, i64* @DOWN_LINK, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i64, i64* %11, align 8
  store i64 %200, i64* %15, align 8
  br label %203

201:                                              ; preds = %195
  %202 = load i64, i64* %10, align 8
  store i64 %202, i64* %15, align 8
  br label %203

203:                                              ; preds = %201, %199
  %204 = load %struct.adapter*, %struct.adapter** %4, align 8
  %205 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %206 = load i64, i64* %15, align 8
  %207 = call i32 @rtw_write32(%struct.adapter* %204, i32 %205, i64 %206)
  %208 = load i64, i64* %14, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  store i64 %208, i64* %211, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  store i32 1, i32* %214, align 8
  br label %232

215:                                              ; preds = %76
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %215
  %222 = load %struct.adapter*, %struct.adapter** %4, align 8
  %223 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %224 = load %struct.hal_com_data*, %struct.hal_com_data** %20, align 8
  %225 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @rtw_write32(%struct.adapter* %222, i32 %223, i64 %226)
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  store i32 0, i32* %230, align 8
  br label %231

231:                                              ; preds = %221, %215
  br label %232

232:                                              ; preds = %42, %50, %70, %231, %203
  ret void
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
