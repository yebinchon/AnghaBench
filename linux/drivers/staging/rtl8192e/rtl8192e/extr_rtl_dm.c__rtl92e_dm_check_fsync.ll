; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_check_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_check_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@_rtl92e_dm_check_fsync.reg_c38_State = internal global i64 0, align 8
@_rtl92e_dm_check_fsync.reset_cnt = internal global i64 0, align 8
@COMP_HALDM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"RSSI %d TimeInterval %d MultipleTimeInterval %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"RateBitmap 0x%x FirstDiffRateThreshold %d SecondDiffRateThreshold %d\0A\00", align 1
@RTLLIB_LINKED = common dso_local global i64 0, align 8
@HT_IOT_PEER_BROADCOM = common dso_local global i64 0, align 8
@rOFDM0_RxDetector3 = common dso_local global i32 0, align 4
@RegC38_TH = common dso_local global i64 0, align 8
@RegC38_Default = common dso_local global i64 0, align 8
@RegC38_Fsync_AP_BCM = common dso_local global i64 0, align 8
@RegC38_NonFsync_Other_AP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_dm_check_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_check_fsync(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load i32, i32* @COMP_HALDM, align 4
  %7 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %8 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %7, i32 0, i32 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @RT_TRACE(i32 %6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %16, i32 %21)
  %23 = load i32, i32* @COMP_HALDM, align 4
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @RT_TRACE(i32 %23, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %33, i32 %38)
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RTLLIB_LINKED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %128

47:                                               ; preds = %1
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HT_IOT_PEER_BROADCOM, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %128

57:                                               ; preds = %47
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %57
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %87 [
    i32 130, label %70
    i32 128, label %77
    i32 129, label %86
  ]

70:                                               ; preds = %64
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = call i32 @_rtl92e_dm_start_hw_fsync(%struct.net_device* %71)
  %73 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %74 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32 129, i32* %76, align 8
  br label %88

77:                                               ; preds = %64
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call i32 @_rtl92e_dm_end_sw_fsync(%struct.net_device* %78)
  %80 = load %struct.net_device*, %struct.net_device** %2, align 8
  %81 = call i32 @_rtl92e_dm_start_hw_fsync(%struct.net_device* %80)
  %82 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %83 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %82, i32 0, i32 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32 129, i32* %85, align 8
  br label %88

86:                                               ; preds = %64
  br label %87

87:                                               ; preds = %64, %86
  br label %88

88:                                               ; preds = %87, %77, %70
  br label %114

89:                                               ; preds = %57
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %112 [
    i32 130, label %95
    i32 129, label %102
    i32 128, label %111
  ]

95:                                               ; preds = %89
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = call i32 @_rtl92e_dm_start_sw_fsync(%struct.net_device* %96)
  %98 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %99 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %98, i32 0, i32 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 128, i32* %101, align 8
  br label %113

102:                                              ; preds = %89
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = call i32 @_rtl92e_dm_end_hw_fsync(%struct.net_device* %103)
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = call i32 @_rtl92e_dm_start_sw_fsync(%struct.net_device* %105)
  %107 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %108 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %107, i32 0, i32 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  store i32 128, i32* %110, align 8
  br label %113

111:                                              ; preds = %89
  br label %112

112:                                              ; preds = %89, %111
  br label %113

113:                                              ; preds = %112, %102, %95
  br label %114

114:                                              ; preds = %113, %88
  %115 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %116 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load i64, i64* @_rtl92e_dm_check_fsync.reg_c38_State, align 8
  %121 = icmp ne i64 %120, 2
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %125 = call i32 @rtl92e_writeb(%struct.net_device* %123, i32 %124, i32 149)
  store i64 2, i64* @_rtl92e_dm_check_fsync.reg_c38_State, align 8
  br label %126

126:                                              ; preds = %122, %119
  br label %127

127:                                              ; preds = %126, %114
  br label %210

128:                                              ; preds = %47, %1
  %129 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %130 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %129, i32 0, i32 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %149 [
    i32 129, label %134
    i32 128, label %141
    i32 130, label %148
  ]

134:                                              ; preds = %128
  %135 = load %struct.net_device*, %struct.net_device** %2, align 8
  %136 = call i32 @_rtl92e_dm_end_hw_fsync(%struct.net_device* %135)
  %137 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %138 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %137, i32 0, i32 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  store i32 130, i32* %140, align 8
  br label %150

141:                                              ; preds = %128
  %142 = load %struct.net_device*, %struct.net_device** %2, align 8
  %143 = call i32 @_rtl92e_dm_end_sw_fsync(%struct.net_device* %142)
  %144 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %145 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %144, i32 0, i32 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  store i32 130, i32* %147, align 8
  br label %150

148:                                              ; preds = %128
  br label %149

149:                                              ; preds = %128, %148
  br label %150

150:                                              ; preds = %149, %141, %134
  %151 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %152 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %209

155:                                              ; preds = %150
  %156 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %157 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %156, i32 0, i32 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @RTLLIB_LINKED, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %197

163:                                              ; preds = %155
  %164 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %165 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @RegC38_TH, align 8
  %168 = icmp sle i64 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load i64, i64* @_rtl92e_dm_check_fsync.reg_c38_State, align 8
  %171 = icmp ne i64 %170, 1
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load %struct.net_device*, %struct.net_device** %2, align 8
  %174 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %175 = call i32 @rtl92e_writeb(%struct.net_device* %173, i32 %174, i32 144)
  store i64 1, i64* @_rtl92e_dm_check_fsync.reg_c38_State, align 8
  br label %176

176:                                              ; preds = %172, %169
  br label %196

177:                                              ; preds = %163
  %178 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %179 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @RegC38_TH, align 8
  %182 = add nsw i64 %181, 5
  %183 = icmp sge i64 %180, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %177
  %185 = load i64, i64* @_rtl92e_dm_check_fsync.reg_c38_State, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %184
  %188 = load %struct.net_device*, %struct.net_device** %2, align 8
  %189 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %190 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %191 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @rtl92e_writeb(%struct.net_device* %188, i32 %189, i32 %192)
  store i64 0, i64* @_rtl92e_dm_check_fsync.reg_c38_State, align 8
  br label %194

194:                                              ; preds = %187, %184
  br label %195

195:                                              ; preds = %194, %177
  br label %196

196:                                              ; preds = %195, %176
  br label %208

197:                                              ; preds = %155
  %198 = load i64, i64* @_rtl92e_dm_check_fsync.reg_c38_State, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load %struct.net_device*, %struct.net_device** %2, align 8
  %202 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %203 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %204 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @rtl92e_writeb(%struct.net_device* %201, i32 %202, i32 %205)
  store i64 0, i64* @_rtl92e_dm_check_fsync.reg_c38_State, align 8
  br label %207

207:                                              ; preds = %200, %197
  br label %208

208:                                              ; preds = %207, %196
  br label %209

209:                                              ; preds = %208, %150
  br label %210

210:                                              ; preds = %209, %127
  %211 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %212 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %232

215:                                              ; preds = %210
  %216 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %217 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @_rtl92e_dm_check_fsync.reset_cnt, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %231

221:                                              ; preds = %215
  %222 = load %struct.net_device*, %struct.net_device** %2, align 8
  %223 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %224 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %225 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @rtl92e_writeb(%struct.net_device* %222, i32 %223, i32 %226)
  store i64 0, i64* @_rtl92e_dm_check_fsync.reg_c38_State, align 8
  %228 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %229 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* @_rtl92e_dm_check_fsync.reset_cnt, align 8
  br label %231

231:                                              ; preds = %221, %215
  br label %243

232:                                              ; preds = %210
  %233 = load i64, i64* @_rtl92e_dm_check_fsync.reg_c38_State, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %232
  %236 = load %struct.net_device*, %struct.net_device** %2, align 8
  %237 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %238 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %239 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @rtl92e_writeb(%struct.net_device* %236, i32 %237, i32 %240)
  store i64 0, i64* @_rtl92e_dm_check_fsync.reg_c38_State, align 8
  br label %242

242:                                              ; preds = %235, %232
  br label %243

243:                                              ; preds = %242, %231
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @_rtl92e_dm_start_hw_fsync(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_dm_end_sw_fsync(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_dm_start_sw_fsync(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_dm_end_hw_fsync(%struct.net_device*) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
