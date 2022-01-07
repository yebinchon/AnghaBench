; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_traffic_status_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_traffic_status_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvobj_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlme_priv }

@_FW_LINKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"TRAFFIC_IDLE\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"TRAFFIC_BUSY\00", align 1
@LPS_CTRL_TRAFFIC_BUSY = common dso_local global i32 0, align 4
@WIFI_ASOC_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"NON_LINKED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @traffic_status_watchdog(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlme_priv*, align 8
  %16 = alloca %struct.dvobj_priv*, align 8
  %17 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 25, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  store %struct.mlme_priv* %20, %struct.mlme_priv** %15, align 8
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = call i32 @collect_traffic_statistics(%struct.adapter* %21)
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %24 = load i32, i32* @_FW_LINKED, align 4
  %25 = call i32 @check_fwstate(%struct.mlme_priv* %23, i32 %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %180

27:                                               ; preds = %2
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %29 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %37 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %44 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %42, %35
  store i32 1, i32* %9, align 4
  %50 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %51 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %55 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 1, i32* %11, align 4
  br label %61

60:                                               ; preds = %49
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %64 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 4000
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %70 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 4000
  br i1 %73, label %74, label %87

74:                                               ; preds = %68, %62
  store i32 1, i32* %12, align 4
  %75 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %76 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %80 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %78, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 1, i32* %13, align 4
  br label %86

85:                                               ; preds = %74
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %89 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %93 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %91, %95
  %97 = icmp sgt i32 %96, 8
  br i1 %97, label %104, label %98

98:                                               ; preds = %87
  %99 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %100 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 2
  br i1 %103, label %104, label %134

104:                                              ; preds = %98, %87
  store i32 0, i32* %5, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %133

107:                                              ; preds = %104
  %108 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %109 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = icmp sle i32 %111, 4
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %115 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  store i32 4, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %107
  %118 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %119 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %124 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 30
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %130 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  store i32 30, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %117
  br label %133

133:                                              ; preds = %132, %104
  br label %158

134:                                              ; preds = %98
  %135 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %136 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = icmp sge i32 %138, 2
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %142 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 2
  store i32 %145, i32* %143, align 4
  br label %150

146:                                              ; preds = %134
  %147 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %148 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %140
  %151 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %152 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i32 1, i32* %5, align 4
  br label %157

157:                                              ; preds = %156, %150
  br label %158

158:                                              ; preds = %157, %133
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load %struct.adapter*, %struct.adapter** %3, align 8
  %166 = call i32 @LPS_Enter(%struct.adapter* %165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %161
  br label %179

168:                                              ; preds = %158
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load %struct.adapter*, %struct.adapter** %3, align 8
  %173 = call i32 @LPS_Leave(%struct.adapter* %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %178

174:                                              ; preds = %168
  %175 = load %struct.adapter*, %struct.adapter** %3, align 8
  %176 = load i32, i32* @LPS_CTRL_TRAFFIC_BUSY, align 4
  %177 = call i32 @rtw_lps_ctrl_wk_cmd(%struct.adapter* %175, i32 %176, i32 1)
  br label %178

178:                                              ; preds = %174, %171
  br label %179

179:                                              ; preds = %178, %167
  br label %203

180:                                              ; preds = %2
  %181 = load %struct.adapter*, %struct.adapter** %3, align 8
  %182 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %181)
  store %struct.dvobj_priv* %182, %struct.dvobj_priv** %16, align 8
  store i32 0, i32* %17, align 4
  %183 = load %struct.dvobj_priv*, %struct.dvobj_priv** %16, align 8
  %184 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %183, i32 0, i32 0
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* @WIFI_ASOC_STATE, align 4
  %188 = call i32 @check_fwstate(%struct.mlme_priv* %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %180
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %17, align 4
  br label %193

193:                                              ; preds = %190, %180
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %17, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load %struct.adapter*, %struct.adapter** %3, align 8
  %201 = call i32 @LPS_Leave(%struct.adapter* %200, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %196, %193
  br label %203

203:                                              ; preds = %202, %179
  %204 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %205 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  store i32 0, i32* %206, align 4
  %207 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %208 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  store i32 0, i32* %209, align 4
  %210 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %211 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 3
  store i32 0, i32* %212, align 4
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %215 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  store i32 %213, i32* %216, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %219 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 5
  store i32 %217, i32* %220, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %223 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 6
  store i32 %221, i32* %224, align 4
  %225 = load i32, i32* %12, align 4
  %226 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %227 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 7
  store i32 %225, i32* %228, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %231 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 8
  store i32 %229, i32* %232, align 4
  %233 = load i32, i32* %14, align 4
  %234 = load %struct.mlme_priv*, %struct.mlme_priv** %15, align 8
  %235 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 9
  store i32 %233, i32* %236, align 4
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i32 @collect_traffic_statistics(%struct.adapter*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @LPS_Enter(%struct.adapter*, i8*) #1

declare dso_local i32 @LPS_Leave(%struct.adapter*, i8*) #1

declare dso_local i32 @rtw_lps_ctrl_wk_cmd(%struct.adapter*, i32, i32) #1

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
