; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_get_encode_ext_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_get_encode_ext_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i64, %struct.ieee80211_crypt_data** }
%struct.ieee80211_crypt_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i32, i32*, i32)*, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }
%struct.iw_encode_ext = type { i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_WEP = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IW_ENCODE_ALG_NONE = common dso_local global i64 0, align 8
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@IW_ENCODE_ALG_TKIP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@IW_ENCODE_ALG_CCMP = common dso_local global i64 0, align 8
@SCM_KEY_LEN = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_TX_SEQ_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_get_encode_ext(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_point*, align 8
  %11 = alloca %struct.iw_encode_ext*, align 8
  %12 = alloca %struct.ieee80211_crypt_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %16 = bitcast %union.iwreq_data* %15 to %struct.iw_point*
  store %struct.iw_point* %16, %struct.iw_point** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %18, %struct.iw_encode_ext** %11, align 8
  %19 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %20 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 32
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %199

30:                                               ; preds = %4
  %31 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %32 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @WEP_KEYS, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %199

48:                                               ; preds = %41
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %13, align 4
  br label %55

51:                                               ; preds = %30
  %52 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %57 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %55
  %63 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %64 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IW_ENCODE_ALG_WEP, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %73 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IW_MODE_INFRA, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71, %68
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %199

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %62, %55
  %82 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %82, i32 0, i32 2
  %84 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %84, i64 %86
  %88 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %87, align 8
  store %struct.ieee80211_crypt_data* %88, %struct.ieee80211_crypt_data** %12, align 8
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  %91 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %92 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %94 = call i32 @memset(%struct.iw_encode_ext* %93, i32 0, i32 32)
  %95 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %96 = icmp ne %struct.ieee80211_crypt_data* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %81
  %98 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %99 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = icmp ne %struct.TYPE_2__* %100, null
  br i1 %101, label %113, label %102

102:                                              ; preds = %97, %81
  %103 = load i64, i64* @IW_ENCODE_ALG_NONE, align 8
  %104 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %105 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %107 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %109 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %110 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %198

113:                                              ; preds = %97
  %114 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %115 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @strcmp(i32 %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load i64, i64* @IW_ENCODE_ALG_WEP, align 8
  %123 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %124 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  br label %154

125:                                              ; preds = %113
  %126 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %127 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @strcmp(i32 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load i64, i64* @IW_ENCODE_ALG_TKIP, align 8
  %135 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %136 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  br label %153

137:                                              ; preds = %125
  %138 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %139 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @strcmp(i32 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load i64, i64* @IW_ENCODE_ALG_CCMP, align 8
  %147 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %148 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %152

149:                                              ; preds = %137
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %199

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152, %133
  br label %154

154:                                              ; preds = %153, %121
  %155 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %156 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i64 (i32, i32, i32*, i32)*, i64 (i32, i32, i32*, i32)** %158, align 8
  %160 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %161 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @SCM_KEY_LEN, align 4
  %164 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %165 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i64 %159(i32 %162, i32 %163, i32* null, i32 %166)
  %168 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %169 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %171 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %172 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %176 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %197

179:                                              ; preds = %154
  %180 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %181 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @IW_ENCODE_ALG_TKIP, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %179
  %186 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %187 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @IW_ENCODE_ALG_CCMP, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %185, %179
  %192 = load i32, i32* @IW_ENCODE_EXT_TX_SEQ_VALID, align 4
  %193 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %194 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %191, %185, %154
  br label %198

198:                                              ; preds = %197, %102
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %198, %149, %77, %45, %27
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @memset(%struct.iw_encode_ext*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
