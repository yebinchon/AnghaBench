; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_wx.c_r8192_wx_set_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_wx.c_r8192_wx_set_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device*, i32 }
%struct.ieee80211_device = type { i8, i8* }

@__const.r8192_wx_set_enc.zero_addr = private unnamed_addr constant [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], align 16
@ENETDOWN = common dso_local global i32 0, align 4
@COMP_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Setting SW wep key\00", align 1
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@KEY_TYPE_WEP40 = common dso_local global i8* null, align 8
@KEY_TYPE_WEP104 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"wrong type in WEP, not WEP40 and WEP104\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8192_wx_set_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8192_wx_set_enc(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.r8192_priv*, align 8
  %11 = alloca %struct.ieee80211_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8], align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca [4 x [6 x i8]], align 16
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %18)
  store %struct.r8192_priv* %19, %struct.r8192_priv** %10, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %21, align 8
  store %struct.ieee80211_device* %22, %struct.ieee80211_device** %11, align 8
  %23 = bitcast [4 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %23, i8 0, i64 4, i1 false)
  store i8 -1, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %24 = bitcast [4 x [6 x i8]]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @__const.r8192_wx_set_enc.zero_addr, i32 0, i32 0, i32 0), i64 24, i1 false)
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENETDOWN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %228

32:                                               ; preds = %4
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* @COMP_SEC, align 4
  %37 = call i32 @RT_TRACE(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 1
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %39, align 8
  %41 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %42 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @ieee80211_wx_set_encode(%struct.ieee80211_device* %40, %struct.iw_request_info* %41, %union.iwreq_data* %42, i8* %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %49 = bitcast %union.iwreq_data* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %226

53:                                               ; preds = %32
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %159, %53
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %162

57:                                               ; preds = %54
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %17, align 4
  %60 = mul nsw i32 4, %59
  %61 = add nsw i32 %60, 0
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* %14, align 1
  %67 = sext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = or i32 %73, %68
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %71, align 1
  %76 = load i32, i32* %17, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %88

78:                                               ; preds = %57
  %79 = load i32, i32* %17, align 4
  %80 = mul nsw i32 4, %79
  %81 = add nsw i32 %80, 1
  %82 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %83 = bitcast %union.iwreq_data* %82 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i8 0, i8* %14, align 1
  br label %88

88:                                               ; preds = %87, %78, %57
  %89 = load i32, i32* %17, align 4
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* %17, align 4
  %93 = mul nsw i32 4, %92
  %94 = add nsw i32 %93, 1
  %95 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %96 = bitcast %union.iwreq_data* %95 to %struct.TYPE_2__*
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i8 0, i8* %14, align 1
  br label %101

101:                                              ; preds = %100, %91, %88
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %17, align 4
  %104 = mul nsw i32 4, %103
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %102, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = load i8, i8* %14, align 1
  %111 = sext i8 %110 to i32
  %112 = and i32 %109, %111
  %113 = shl i32 %112, 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = or i32 %118, %113
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %116, align 1
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %17, align 4
  %123 = mul nsw i32 4, %122
  %124 = add nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* %14, align 1
  %130 = sext i8 %129 to i32
  %131 = and i32 %128, %130
  %132 = shl i32 %131, 16
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = or i32 %137, %132
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %135, align 1
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %17, align 4
  %142 = mul nsw i32 4, %141
  %143 = add nsw i32 %142, 3
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %140, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = load i8, i8* %14, align 1
  %149 = sext i8 %148 to i32
  %150 = and i32 %147, %149
  %151 = shl i32 %150, 24
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = or i32 %156, %151
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %154, align 1
  br label %159

159:                                              ; preds = %101
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %17, align 4
  br label %54

162:                                              ; preds = %54
  %163 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %164 = bitcast %union.iwreq_data* %163 to %struct.TYPE_2__*
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %168 = and i32 %166, %167
  switch i32 %168, label %177 [
    i32 0, label %169
    i32 1, label %173
    i32 2, label %174
    i32 3, label %175
    i32 4, label %176
  ]

169:                                              ; preds = %162
  %170 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %171 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %170, i32 0, i32 0
  %172 = load i8, i8* %171, align 8
  store i8 %172, i8* %15, align 1
  br label %178

173:                                              ; preds = %162
  store i8 0, i8* %15, align 1
  br label %178

174:                                              ; preds = %162
  store i8 1, i8* %15, align 1
  br label %178

175:                                              ; preds = %162
  store i8 2, i8* %15, align 1
  br label %178

176:                                              ; preds = %162
  store i8 3, i8* %15, align 1
  br label %178

177:                                              ; preds = %162
  br label %178

178:                                              ; preds = %177, %176, %175, %174, %173, %169
  %179 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %180 = bitcast %union.iwreq_data* %179 to %struct.TYPE_2__*
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 5
  br i1 %183, label %184, label %200

184:                                              ; preds = %178
  %185 = load i8*, i8** @KEY_TYPE_WEP40, align 8
  %186 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %187 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load %struct.net_device*, %struct.net_device** %6, align 8
  %189 = call i32 @EnableHWSecurityConfig8192(%struct.net_device* %188)
  %190 = load %struct.net_device*, %struct.net_device** %6, align 8
  %191 = load i8, i8* %15, align 1
  %192 = load i8, i8* %15, align 1
  %193 = load i8*, i8** @KEY_TYPE_WEP40, align 8
  %194 = load i8, i8* %15, align 1
  %195 = sext i8 %194 to i64
  %196 = getelementptr inbounds [4 x [6 x i8]], [4 x [6 x i8]]* %16, i64 0, i64 %195
  %197 = getelementptr inbounds [6 x i8], [6 x i8]* %196, i64 0, i64 0
  %198 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %199 = call i32 @setKey(%struct.net_device* %190, i8 signext %191, i8 signext %192, i8* %193, i8* %197, i32 0, i8* %198)
  br label %225

200:                                              ; preds = %178
  %201 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %202 = bitcast %union.iwreq_data* %201 to %struct.TYPE_2__*
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 13
  br i1 %205, label %206, label %222

206:                                              ; preds = %200
  %207 = load i8*, i8** @KEY_TYPE_WEP104, align 8
  %208 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %209 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %208, i32 0, i32 1
  store i8* %207, i8** %209, align 8
  %210 = load %struct.net_device*, %struct.net_device** %6, align 8
  %211 = call i32 @EnableHWSecurityConfig8192(%struct.net_device* %210)
  %212 = load %struct.net_device*, %struct.net_device** %6, align 8
  %213 = load i8, i8* %15, align 1
  %214 = load i8, i8* %15, align 1
  %215 = load i8*, i8** @KEY_TYPE_WEP104, align 8
  %216 = load i8, i8* %15, align 1
  %217 = sext i8 %216 to i64
  %218 = getelementptr inbounds [4 x [6 x i8]], [4 x [6 x i8]]* %16, i64 0, i64 %217
  %219 = getelementptr inbounds [6 x i8], [6 x i8]* %218, i64 0, i64 0
  %220 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %221 = call i32 @setKey(%struct.net_device* %212, i8 signext %213, i8 signext %214, i8* %215, i8* %219, i32 0, i8* %220)
  br label %224

222:                                              ; preds = %200
  %223 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %206
  br label %225

225:                                              ; preds = %224, %184
  br label %226

226:                                              ; preds = %225, %32
  %227 = load i32, i32* %12, align 4
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %226, %29
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @ieee80211_wx_set_encode(%struct.ieee80211_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @EnableHWSecurityConfig8192(%struct.net_device*) #1

declare dso_local i32 @setKey(%struct.net_device*, i8 signext, i8 signext, i8*, i8*, i32, i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
