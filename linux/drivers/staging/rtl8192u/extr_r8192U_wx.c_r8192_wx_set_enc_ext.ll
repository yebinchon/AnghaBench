; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_wx.c_r8192_wx_set_enc_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_wx.c_r8192_wx_set_enc_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i64, i32, i32, i32, i64 }
%struct.iw_encode_ext = type { i64, i32, i32, i32 }

@__const.r8192_wx_set_enc_ext.broadcast_addr = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i64 0, align 8
@IW_ENCODE_ALG_CCMP = common dso_local global i64 0, align 8
@KEY_TYPE_CCMP = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@KEY_TYPE_WEP40 = common dso_local global i32 0, align 4
@KEY_TYPE_WEP104 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8192_wx_set_enc_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8192_wx_set_enc_ext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.r8192_priv*, align 8
  %11 = alloca %struct.ieee80211_device*, align 8
  %12 = alloca [6 x i32], align 16
  %13 = alloca [6 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca %struct.iw_encode_ext*, align 8
  %16 = alloca %struct.iw_point*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %20)
  store %struct.r8192_priv* %21, %struct.r8192_priv** %10, align 8
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 1
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %23, align 8
  store %struct.ieee80211_device* %24, %struct.ieee80211_device** %11, align 8
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 1
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %29, align 8
  %31 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %32 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @ieee80211_wx_set_encode_ext(%struct.ieee80211_device* %30, %struct.iw_request_info* %31, %union.iwreq_data* %32, i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %35, i8* align 16 bitcast ([6 x i32]* @__const.r8192_wx_set_enc_ext.broadcast_addr to i8*), i64 24, i1 false)
  %36 = bitcast [6 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 24, i1 false)
  %37 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 16, i1 false)
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %39, %struct.iw_encode_ext** %15, align 8
  %40 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %41 = bitcast %union.iwreq_data* %40 to %struct.iw_point*
  store %struct.iw_point* %41, %struct.iw_point** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %42 = load %struct.iw_point*, %struct.iw_point** %16, align 8
  %43 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %4
  %49 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %50 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IW_ENCODE_ALG_NONE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %4
  br label %165

55:                                               ; preds = %48
  %56 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %57 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IW_ENCODE_ALG_CCMP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @KEY_TYPE_CCMP, align 4
  %63 = sext i32 %62 to i64
  br label %68

64:                                               ; preds = %55
  %65 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %66 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i64 [ %63, %61 ], [ %67, %64 ]
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %18, align 4
  %71 = load %struct.iw_point*, %struct.iw_point** %16, align 8
  %72 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %78, %68
  %82 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %83 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = load i64, i64* @IW_MODE_ADHOC, align 8
  %91 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %92 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* @KEY_TYPE_WEP40, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %95, %89, %81
  %100 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %101 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 13
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* @KEY_TYPE_WEP40, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @KEY_TYPE_WEP104, align 4
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %108, %104, %99
  %111 = load i32, i32* %18, align 4
  %112 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %113 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.net_device*, %struct.net_device** %5, align 8
  %115 = call i32 @EnableHWSecurityConfig8192(%struct.net_device* %114)
  br label %116

116:                                              ; preds = %110, %95
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %118 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %15, align 8
  %119 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @memcpy(i32* %117, i32 %120, i32 16)
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* @KEY_TYPE_WEP40, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %116
  %127 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %128 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 2
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.net_device*, %struct.net_device** %5, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %18, align 4
  %136 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %138 = call i32 @setKey(%struct.net_device* %132, i32 %133, i32 %134, i32 %135, i32* %136, i32 0, i32* %137)
  br label %164

139:                                              ; preds = %126, %116
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %145 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  %146 = load %struct.net_device*, %struct.net_device** %5, align 8
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %18, align 4
  %150 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %152 = call i32 @setKey(%struct.net_device* %146, i32 %147, i32 %148, i32 %149, i32* %150, i32 0, i32* %151)
  br label %163

153:                                              ; preds = %139
  %154 = load %struct.net_device*, %struct.net_device** %5, align 8
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %158 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i32*
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %162 = call i32 @setKey(%struct.net_device* %154, i32 4, i32 %155, i32 %156, i32* %160, i32 0, i32* %161)
  br label %163

163:                                              ; preds = %153, %142
  br label %164

164:                                              ; preds = %163, %131
  br label %165

165:                                              ; preds = %164, %54
  %166 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %167 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %166, i32 0, i32 0
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load i32, i32* %9, align 4
  ret i32 %169
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_wx_set_encode_ext(%struct.ieee80211_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @EnableHWSecurityConfig8192(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @setKey(%struct.net_device*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
